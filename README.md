# e2198_reconstruction

related data files can be found at ~/seungmount/Omni/e2198_reconstruction/

Data
--------------
* mesh.omni 
 omni project that contains all the cell reconstruction so far. 

* m2_cells_yymmdd.h5 
 downsampled indexed image from mesh.omni. mesh.omni is in mip level 1 compared to the original e2198. m2_ files are in mip level 2. 

* m2_cells_nosoma_yymmdd.h5
 somata removed from m2_cells_yymmdd.h5

* m2_cells_nosoma_warped_yymmdd.h5
 transform of m2_cells_nosoma_yymmdd.h5, following Sumbul's conformal transformation method

* m2_cells_property_nosoma_yymmdd.mat 
  * num_voxels_at_depth : number of voxels for each cell counted for each "x" value (depth in retina) from m2_cells_nosoma_warped_yymmdd.h5, from which the stratification profile is calculated by normalization. 
  * xy_projection : projection of cells onto the the plane parallel to the retina
  * cell_hull : convex hull of the xy_projection
  * num_voxels_in_grid_at_depth : haven't been used for any purpose. consider remove as the data is too large. 
  * cc_num_voxels_at_depth : haven't been used for any purpose. consider remove as the data is too large. 
  * cc_hull_at_depth : haven't been used for any purpose. consider remove as the data is too large. 


cell_info structure
--------------
contains metadata of the cells and stratification profile. it is constructed by calling scripts as below. 

>> cell_info=cell_info_set_type();
>> cell_info=cell_info_get_strat(cell_info,'m2_cells_property_nosoma_yymmdd.mat');

cell_info_set_type.m
cell_info_typedef_ac.m
cell_info_typedef_bc.m
cell_info_typedef_gc.m         
cell_info_get_strat.m

