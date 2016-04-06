function recon_preproc_omni2hdf5(path_mesh_omni,hdf5_out,cells)

addpath /data/research/jk/e2198/bin/zcode/matlab/hdf5

global mipLevel sizeChunk sizeVolInChunks0
mipLevel=2;
sizeChunk=[128 128 128];
sizeVolInChunks0=[37 164 101];
mipFactor=2^mipLevel;
sizeofUint32=4;
sizeChunkLinear=prod(sizeChunk);
sizeVolInVoxels0=sizeVolInChunks0.*sizeChunk;
sizeVolInChunks=ceil(ceil(sizeVolInVoxels0/mipFactor)./sizeChunk);
sizeVolInVoxels=sizeVolInChunks.*sizeChunk;
path_segments=sprintf('%s.files/segmentations/segmentation1/%d/volume.uint32_t.raw',path_mesh_omni,mipLevel-1);

f=fopen(path_segments,'r');
create_hdf5_file(hdf5_out,'/main',sizeVolInVoxels,sizeChunk,[0 0 0],'uint');
for x=1:sizeVolInChunks(1)
    for y=1:sizeVolInChunks(2)
        for z=1:sizeVolInChunks(3)
            fprintf('reading [%d/%d %d/%d %d/%d]\n',...
                x,sizeVolInChunks(1),y,sizeVolInChunks(2),z,sizeVolInChunks(3));            
            subChunk=[x y z];
            indChunk=sub2ind(sizeVolInChunks,x,y,z);
            off=(sizeofUint32*(indChunk-1)*sizeChunkLinear);
            st=(subChunk-1).*sizeChunk+1;
            ed=st+sizeChunk-1;

            fseek(f,off,'bof');
            chunk=reshape(fread(f,sizeChunkLinear,'*uint32'),sizeChunk);
            if exist('cells','var')
                chunk=double(chunk).*ismember(chunk,cells);
            end
            write_hdf5_file(hdf5_out,'/main',st,ed,uint32(chunk)); 
        end
    end
end
fclose(f);

end

