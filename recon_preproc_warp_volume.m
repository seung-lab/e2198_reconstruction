function recon_preproc_warp_volume(file_map,hdf5_in,hdf5_out,bboxWarpedVol,conformalJump)

addpath /data/research/jk/e2198/bin/zcode/matlab/hdf5

sizeChunk=[128 128 128];
mipLevel=2;
mipFactor=2^mipLevel;
sizeVolInChunks0=[37 164 101];
sizeVolInVoxels0=sizeVolInChunks0.*sizeChunk;
sizeVolInChunks=ceil(ceil(sizeVolInVoxels0/mipFactor)./sizeChunk);
sizeVolInVoxelsIn=sizeVolInChunks.*sizeChunk;

sizeWarpVol=bboxWarpedVol(4:6)-bboxWarpedVol(1:3)+1;
sizeWarpVolInChunk=ceil(sizeWarpVol./sizeChunk);
sizeWarpVolInVoxels=sizeWarpVolInChunk.*sizeChunk;
step=2*conformalJump;
offset=bboxWarpedVol(1:3)-1;

create_hdf5_file(hdf5_out,'/main',sizeWarpVolInVoxels,sizeChunk,[0 0 0],'uint');
chunk=zeros(sizeChunk,'uint32');
for x=1:sizeWarpVolInChunk(1)
   for y=1:sizeWarpVolInChunk(2)
       for z=1:sizeWarpVolInChunk(3)
           st=([x y z]-1).*sizeChunk+1;
           ed=[x y z].*sizeChunk;
           fprintf('filling up [%d %d %d]\n',x,y,z);
           write_hdf5_file(hdf5_out,'/main',st,ed,chunk); 
       end
   end
end    

f=fopen(file_map,'r');
for x=1:step:sizeVolInVoxelsIn(1);
    for y=1:step:sizeVolInVoxelsIn(2);
        for z=1:step:sizeVolInVoxelsIn(3);
            st=[x y z];
            ed=min(st+step-1,sizeVolInVoxelsIn);
            fprintf('reading [%d~%d %d~%d %d~%d]\n',[st; ed]);

            st_out=double(fread(f,3,'*int32'));
            ed_out=double(fread(f,3,'*int32'));
            map=fread(f,prod(ed-st+1),'*int32');

            chunk_in=uint32(get_hdf5_file(hdf5_in,'/main',st,ed));
            st_out=st_out'-offset;
            ed_out=ed_out'-offset;
            chunk_out=uint32(get_hdf5_file(hdf5_out,'/main',st_out,ed_out));
            chunk_out(map)=chunk_in(:);
            write_hdf5_file(hdf5_out,'/main',st_out,ed_out,uint32(chunk_out));    
            fprintf(': writing to [%d~%d %d~%d %d~%d]\n',[st_out; ed_out]);
        end
    end
end
fclose(f);

end
