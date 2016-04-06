%% 
function stitchVolumeE2198_intoAllOmni_nodup(projName,cell_list_file,noRunOmni)

addpath /data/research/jk/e2198/bin/helper
addpath /data/research/jk/e2198/bin/buildOmni
addpath /data/research/jk/e2198/bin/zcode/matlab/hdf5
addpath /data/research/jk/omniweb/bin

homeVolumes='/data/e2198_omnivol';
homeVolumesWeb='/data/e2198_eyewirevol';
homeCells='/data/e2198_completed_cells/';
omni_exe_path='/data/omni/omni.omnify/omni.omnify';

cellSrcData=[
%   struct('homeChild',[homeCells '/17012/'],'id',17012);
];

%cells=load(cell_list_file);
%cells=unique(cells(:,1));
%N=numel(cells);
%for i=1:N
%    cellSrcData(i).homeChild=sprintf('%s/%d/',homeCells,cells(i));
%    cellSrcData(i).id=cells(i);
%end

dirs=dir(homeCells);
for i=1:numel(dirs)
    x=dirs(i).name;
    if ~isequal(regexp(x,'[0-9]'),1:5)
        continue;
    end 
    home=sprintf('%s/%s',homeCells,x);
    id=str2double(x);
    cellSrcData=[cellSrcData; struct('homeChild',home,'id',id)];
end

[lstVolumesLettOmni,lstVolumesLettWeb]=getRequiredVolumes(cellSrcData);


global hdf5out mipLevel mipFactor sizeofUint32 sizeChunkLinear sizeChunk sizeVolumeWeb0 sizeVolumeWeb segRawPostfix;
hdf5out=sprintf('%s.h5',projName);
mipLevel=1;
mipFactor=2^mipLevel;
sizeChunk=[128 128 128];
sizeChunkLinear=prod(sizeChunk);
sizeofUint32=4;
sizeOutVolChunks0=[37 164 101];
sizeOutVolPixels0=sizeOutVolChunks0.*sizeChunk;
sizeOutVolChunks=ceil(ceil(sizeOutVolPixels0/mipFactor)./sizeChunk);
sizeOutVolPixels=sizeOutVolChunks.*sizeChunk;
segRawPostfix=['.files/segmentations/segmentation1/' num2str(mipLevel) '/volume.uint32_t.raw'];
sizeVolumeWeb0=[256 256 256];
sizeVolumeWeb=sizeVolumeWeb0/mipFactor;

%% blank hdf5
if ~exist(hdf5out,'file')
    fprintf('new hdf5 will be written\n');

    create_hdf5_file(hdf5out,'/main',sizeOutVolPixels,sizeChunk,[0 0 0],'uint');
    chunk=zeros(sizeChunk,'uint32');
    for x=1:sizeOutVolChunks(1)
        for y=1:sizeOutVolChunks(2)
            for z=1:sizeOutVolChunks(3)
                st=([x y z]-1).*sizeChunk+1;
                ed=[x y z].*sizeChunk;
                fprintf('filling up [%d %d %d]\n',x,y,z);
                write_hdf5_file(hdf5out,'/main',st,ed,chunk); 
            end
        end
    end    
end

% omni volumes
numVols=numel(lstVolumesLettOmni);

for j=1:numVols

    volLett=lstVolumesLettOmni{j};
    volBox=hvGetVolumeBoxFromVolumeLetter(homeVolumes,volLett);
    volName=hvGetVolumeNameFromLetter(homeVolumes,volLett);
    volPath=sprintf('%s/%s',homeVolumes,volName);
    
    cellIDofSupervoxel=getRefTableSupervoxel2Cell({'consensus','bomni'},volLett,cellSrcData);
    if ~any(cellIDofSupervoxel)
        continue;
    end

    volSizeChunks0=volBox(4:6)-volBox(1:3)+1;
    volSizePixels0=volSizeChunks0.*sizeChunk;
    volOffset0=(volBox(1:3)-[1 0 0]).*sizeChunk+18;    
    volSizePixels=ceil(volSizePixels0/mipFactor);
    volSizeChunks=ceil(volSizePixels./sizeChunk);
    volOffset=floor(volOffset0/mipFactor);

    filepath=sprintf('%s%s',volPath,segRawPostfix);
    f=fopen(filepath,'r');
    for x=1:volSizeChunks(1)
        for y=1:volSizeChunks(2)
            for z=1:volSizeChunks(3)
                fprintf('* (%d/%d) %s: [%d/%d %d/%d %d/%d] ',...
                    j,numVols,volLett,x,volSizeChunks(1),y,volSizeChunks(2),z,volSizeChunks(3));

                % get chunk location and read
                subChunk=[x y z];
                indChunk=sub2ind(volSizeChunks,x,y,z);
                off=(sizeofUint32*(indChunk-1)*sizeChunkLinear);
                st=volOffset+(subChunk-1).*sizeChunk+1;
                ed=min(st+sizeChunk-1,sizeOutVolPixels);

                % get chunk from omni volume, convert into cells seg
                fseek(f,off,'bof');
                chunk=reshape(fread(f,sizeChunkLinear,'*uint32'),sizeChunk);
                fprintf('chunk read, ');
                largestSupervoxelID=max(chunk(:));
                if numel(cellIDofSupervoxel)<largestSupervoxelID+1
                    cellIDofSupervoxel(largestSupervoxelID+1)=0;
                end
                chunk=cellIDofSupervoxel(chunk+1);
                fprintf('chunk processed\n');
                if (chunk==0)
                    fprintf('    >> chunk blank\n');
                    continue;
                end

                % write chunk
                chunk=chunk(1:ed(1)-st(1)+1,1:ed(2)-st(2)+1,1:ed(3)-st(3)+1);
                fprintf('    >> (%d~%d, %d~%d, %d~%d) ',[st; ed]);
                chunkDst=uint32(get_hdf5_file(hdf5out,'/main',st,ed));
                fprintf('dst chunk read, ');
                chunkDst=chunkDst+uint32(chunk).*uint32(chunkDst==0); %underwrite
                write_hdf5_file(hdf5out,'/main',st,ed,uint32(chunkDst));
                fprintf('output written\n');
            end
        end
    end
    fclose(f);
end

%% eyewire volumes
numVols=numel(lstVolumesLettWeb);

for j=1:numVols

    volLett=lstVolumesLettWeb{j};
    [volPath,volBox]=GetVolumePathWeb(homeVolumesWeb,volLett);
    fprintf('* (%d/%d) volume %s ...',j,numVols,volLett);
    cellIDofSupervoxel=getRefTableSupervoxel2Cell({'eyewire'},volLett,cellSrcData);
    if ~any(cellIDofSupervoxel)
        fprintf(' no data\n');
        continue;
    end

    volSizePixels=sizeVolumeWeb;
    volOffset0=volBox(1:3)-1;
    volOffset=floor(volOffset0/mipFactor);
    st=volOffset+1;
    ed=min(st+volSizePixels-1,sizeOutVolPixels);

    filepath=sprintf('%s%s',volPath,segRawPostfix);
    chunk=getVolumeSegmentation(filepath);
    fprintf('read, '); 

    largestSupervoxelID=max(chunk(:));
    if numel(cellIDofSupervoxel)<largestSupervoxelID+1
        cellIDofSupervoxel(largestSupervoxelID+1)=0;
    end
    chunk=cellIDofSupervoxel(chunk+1);
    fprintf('processed\n');
    if (chunk==0)
        fprintf('    >> chunk blank\n');
        continue;
    end

    % write chunk
    chunk=chunk(1:ed(1)-st(1)+1,1:ed(2)-st(2)+1,1:ed(3)-st(3)+1);
    fprintf('    >> (%d~%d, %d~%d, %d~%d) ',[st; ed]);
    chunkDst=uint32(get_hdf5_file(hdf5out,'/main',st,ed));
    fprintf('dst chunk read, ');
    chunkDst=chunkDst+uint32(chunk).*uint32(chunkDst==0); %underwrite
    write_hdf5_file(hdf5out,'/main',st,ed,uint32(chunkDst));
    fprintf('output written\n');

end

%%
filename=sprintf('omnify_%s.cmd',projName);
fo=fopen(filename,'w');
fprintf(fo,'create:%s.omni\n',projName);
fprintf(fo,'loadHDF5seg:%s\n',hdf5out);
fprintf(fo,'setSegResolution:1,%d,%d,%d\n',mipFactor,mipFactor,mipFactor);
fprintf(fo,'mesh\n');
fprintf(fo,'close\n');
fclose(fo);

if exist('noRunOmni','var') && noRunOmni
    return
end

system([omni_exe_path ' --headless --cmdfile ' filename]);
% system(sprintf('chmod -R 777 %s.omni*',projName));
    
end


%%
function write_overlap(offset,chunk,newCell,overlapCells,overlapSegs)

global sizeChunk hdf5out mipFactor

oldCells=unique(overlapCells);
for i=1:numel(oldCells);
    oldCell=oldCells(i);
    idx=find(ismember(chunk,overlapSegs(overlapCells==oldCell)));
    [x,y,z]=ind2sub(sizeChunk,idx);
    overlap_center=mean([x y z]);
    f=fopen([hdf5out '.overlaps'],'a');
    if (newCell<oldCell)
        fprintf(f,'%d %d : %d (%d, %d, %d)\n',newCell,oldCell,numel(idx),int32(mipFactor*(offset+overlap_center)));
    else
        fprintf(f,'%d %d : %d (%d, %d, %d)\n',oldCell,newCell,numel(idx),int32(mipFactor*(offset+overlap_center)));
    end
    fclose(f);
end

end

%%
function check_overlap_between_cells(offset,seg_existing,seg_new)

global hdf5out mipFactor checkOverlap

if ~checkOverlap
    return
end

overlap_location=(seg_new~=0)&(seg_existing~=0)&(seg_new~=seg_existing);
overlap_new_cells=unique(seg_new(overlap_location));
overlap_existing_cells=unique(seg_existing(overlap_location));

for i=1:numel(overlap_new_cells)
    for j=1:numel(overlap_existing_cells)
        idx=find(overlap_location&(seg_new==overlap_new_cells(i))&(seg_existing==overlap_existing_cells(j)));
        [x,y,z]=ind2sub(size(seg_existing),idx);
        overlap_center=mean([x y z]);
        f=fopen([hdf5out '.overlaps'],'a');
        if (overlap_new_cells(i)<overlap_existing_cells(j))
            fprintf(f,'%d %d : %d (%d, %d, %d)\n',overlap_new_cells(i),overlap_existing_cells(j),numel(idx),int32(mipFactor*(offset+overlap_center)));
        else
            fprintf(f,'%d %d : %d (%d, %d, %d)\n',overlap_existing_cells(j),overlap_new_cells(i),numel(idx),int32(mipFactor*(offset+overlap_center)));
        end
        fclose(f);
    end
end

end

%%
function [lstVolLettOmni,lstVolLettWeb]=getRequiredVolumes(cellSrcData)

lstVolLettOmni=[];
lstVolLettWeb=[];
N=numel(cellSrcData);
for i=1:N
    files=dir([cellSrcData(i).homeChild '/*_*.consensus.child']);
    n1=numel(files);
    files=[files; dir([cellSrcData(i).homeChild '/*_*.bomni.child'])];
    n2=numel(files)-n1;
    lst={files.name}';
    pos=strfind(lst,'_');
    lstVolLettOmni=[lstVolLettOmni; cellfun(@(x,y) x(1:y-1),lst,pos,'UniformOutput',false)];
    files=dir([cellSrcData(i).homeChild '/*_*.eyewire.child']);
    n3=numel(files);
    lst={files.name}';
    lstVolLettWeb=[lstVolLettWeb; cellfun(@(x) x(1:9),lst,'UniformOutput', false)];
    fprintf('* (%d/%d) directory %d: %d %d %d files found\n',i,N,cellSrcData(i).id,n1,n2,n3);
end

lstVolLettOmni=unique(lstVolLettOmni);
lstVolLettWeb=unique(lstVolLettWeb);
    
end

%%
function [volPath,volBox]=GetVolumePathWeb(homeVolumesWeb,volLett)

global sizeVolumeWeb0

rtn=textscan(volLett,'x%dy%dz%d');
x=double(rtn{1}); y=double(rtn{2}); z=double(rtn{3});

ov=[32 32 32];
stOff=[242 274 210];

off=stOff+[x y z].*(sizeVolumeWeb0-ov);
st=off+1;
ed=off+sizeVolumeWeb0;

volPath=sprintf('%s/x%02d/y%02d/x%02dy%02dz%02d_s%d_%d_%d_e%d_%d_%d.omni',homeVolumesWeb,x,y,x,y,z,st,ed);
volBox=[st ed];

end

%%
function cellIDofSupervoxel=getRefTableSupervoxel2Cell(valTypeStrs,volLett,cellSrcData)

cellIDofSupervoxel=[0];
for i=1:numel(cellSrcData);
    files=[];
    for j=1:numel(valTypeStrs)
        pattern=sprintf('%s/%s_*.%s.child',cellSrcData(i).homeChild,volLett,valTypeStrs{j});
        files=[files; dir(pattern)];
    end
    for j=1:numel(files)
        filepath=[cellSrcData(i).homeChild '/' files(j).name];
        seg=omReadChildList(filepath);
        lstSeg=setdiff(seg.lSprVxl,0);
        cellIDofSupervoxel(lstSeg+1)=cellSrcData(i).id;   
    end
end

end

%%
function [vol]=getVolumeSegmentation(fn)

global sizeofUint32 sizeChunk sizeChunkLinear sizeVolumeWeb

sizeVolumeInChunks=sizeVolumeWeb./sizeChunk;
vol=zeros(sizeVolumeWeb,'uint32');

fp=fopen(fn,'r');
for x=1:sizeVolumeInChunks(1)
    for y=1:sizeVolumeInChunks(2)
        for z=1:sizeVolumeInChunks(3)
            sub=[x y z];
            indChunk=sub2ind(sizeVolumeInChunks,sub(1),sub(2),sub(3));
            offset=(sizeofUint32*(indChunk-1)*sizeChunkLinear);
            fseek(fp,offset,'bof');
            chunk=reshape(fread(fp,sizeChunkLinear,'*uint32'),sizeChunk);
            st=([x y z]-1).*sizeChunk+1;
            ed=([x y z]).*sizeChunk;
            vol(st(1):ed(1),st(2):ed(2),st(3):ed(3))=chunk;
        end
    end
end
fclose(fp);

end

