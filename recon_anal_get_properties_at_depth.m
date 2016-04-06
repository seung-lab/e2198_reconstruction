function cell_property=recon_anal_get_properties_at_depth(hdf5_warpvol,maxcellid)

addpath /data/research/jk/e2198/bin/zcode/matlab/hdf5

sizeChunk=[128 128 128];
info=hdf5info(hdf5_warpvol);
sizeWarpVolInVoxel=info.GroupHierarchy.Datasets.Dims;
sizeWarpVolInChunk=ceil(sizeWarpVolInVoxel./sizeChunk);

voxel_size_y=16.5;
voxel_size_z=23;
scaling_factor_z=voxel_size_z/voxel_size_y;
new_size=[sizeWarpVolInVoxel(2) round(sizeWarpVolInVoxel(3)*scaling_factor_z)];
step=min(round(new_size/100));
grid_y=[1:step:(new_size(1)-1) new_size(1)];
grid_z=[1:step:(new_size(2)-1) new_size(2)];

cell_property.num_voxels_at_depth=zeros(sizeWarpVolInVoxel(1),maxcellid);
cell_property.num_voxels_in_grid_at_depth=cell(sizeWarpVolInVoxel(1),maxcellid);
cell_property.cc_num_voxels_at_depth=cell(sizeWarpVolInVoxel(1),maxcellid);
cell_property.cc_hull_at_depth=cell(sizeWarpVolInVoxel(1),maxcellid);
cell_property.cell_hull=cell(1,maxcellid);
cell_property.xy_projection=cell(1,maxcellid);

poolobj=parpool('local',26);

PlaneChunk=zeros([sizeChunk(1) sizeWarpVolInVoxel(2:3)],'uint32');
for x=3:sizeWarpVolInChunk(1)-5 % all empty 1~2, (end-4)~
    for y=1:sizeWarpVolInChunk(2)
        for z=1:sizeWarpVolInChunk(3)
            st=([x y z]-1).*sizeChunk+1;
            ed=st+sizeChunk-1;
            fprintf('reading [%d~%d %d~%d %d~%d]\n',[st; ed]);
            chunk=get_hdf5_file(hdf5_warpvol,'/main',st,ed);
            PlaneChunk(1:sizeChunk(1),st(2):ed(2),st(3):ed(3))=chunk;
        end
    end
    
    for i=1:sizeChunk(1)
        fprintf('processing depth %d\n',(x-1)*sizeChunk(1)+i);
        plane=squeeze(PlaneChunk(i,:,:));
        cells_in_plane=setdiff(plane(:),0)';
        N=numel(cells_in_plane);
        num_voxels_local=zeros(1,N);
        num_voxels_in_grid_local=cell(1,N);
        cc_num_voxels_local=cell(1,N);
        cc_hull_local=cell(1,N);
        cell_hull_local=cell(1,N);
        xy_projection_local=cell(1,N);

        parfor j=1:N
            cell_id=cells_in_plane(j);
            fprintf('-processing depth %d: for cell %d\n',(x-1)*sizeChunk(1)+i,cell_id);
            plane_bw=ismember(plane,cell_id);
            plane_bw=imresize(plane_bw,new_size);
            cc=bwconncomp(plane_bw');
            a=regionprops(cc,'Area');
            h=regionprops(cc,'ConvexHull');
            num_voxels_local(j)=sum([a.Area]);
            num_voxels_in_grid_local{j}=get_grid_voxel_count(plane_bw,grid_y,grid_z);
            cc_num_voxels_local{j}={a.Area};
            cc_hull_local{j}={h.ConvexHull};            
            [xx,yy]=find(plane_bw);
            xy_projection_local{j}=[xx yy];
            hull=vertcat(cc_hull_local{j}{:});
            kk=convhull(hull(:,1),hull(:,2));
            cell_hull_local{j}=hull(kk,:);
        end        
        for j=1:N
            cell_id=cells_in_plane(j);
            cell_property.num_voxels_at_depth((x-1)*sizeChunk(1)+i,cell_id)=num_voxels_local(j);
            cell_property.num_voxels_in_grid_at_depth{(x-1)*sizeChunk(1)+i,cell_id}=num_voxels_in_grid_local{j};
            cell_property.cc_num_voxels_at_depth{(x-1)*sizeChunk(1)+i,cell_id}=cc_num_voxels_local{j};
            cell_property.cc_hull_at_depth{(x-1)*sizeChunk(1)+i,cell_id}=cc_hull_local{j};
            cell_property.xy_projection{cell_id}=unique([cell_property.xy_projection{cell_id}; xy_projection_local{j}],'rows');
            hull=[cell_property.cell_hull{cell_id}; cell_hull_local{j}];
            kk=convhull(hull(:,1),hull(:,2));
            cell_property.cell_hull{cell_id}=hull(kk,:);
        end
    end
end

delete(poolobj);

end

function grid_voxel_count=get_grid_voxel_count(im_bw,grid_y,grid_z)

m=numel(grid_y);
n=numel(grid_z);
grid_voxel_count=zeros(m-1,n-1);

for y=1:m-1
    for z=1:n-1
        a=im_bw(grid_y(y):grid_y(y+1)-1,grid_z(z):grid_z(z+1)-1);
        grid_voxel_count(y,z)=sum(a(:));
    end
end

end
