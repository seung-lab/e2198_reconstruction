# e2198_reconstruction

related data files can be found at ~/seungmount/Omni/e2198_reconstruction/

Building mesh.omni
--------------
* e2198_completed_cells
  each 5-digit subdirectory becomes the cell ID in mesh.omni. each directory contains the omni/eyewire volumes and segments that comprise the cell. 

* stitchVolumeE2198_intoAllOmni_nodup('mesh')
  this script reads the e2198_completed_cells directory and writes "mesh.h5" file. the file is indexed image of mesh.omni. the script also call omni.omnify to build mesh.omni from mesh.h5. 

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
contains metadata of the cells and stratification profile. 

* cell_id: ID in mesh.omni
* class: 1=GC, 2=AC, 3=BC, 4=yet to be classified, 0=can't tell, 5=non-neuron objects
* soma: location of soma in the cell layers. 1=GCL 2=INL
* zone: location in neuropia zone. neuropia1 can have values 1,2,3,4. neuropia2 can have values 1,2,3,... 999 is outside. distinction between neuropia1 & 2 is possible from soma location. 
* ctn: 0=irrelevant, 1=neuropia1, 2=neuropia2. whether the cell is done during neuropia. it is different from the zone. even if a cell is in a neuropia zone, it could have been completed before neuropia. 
* complete: 0=incomplete, 1=complete. mesh.omni contains the cells under reconstruction too.
* type: classified cell types. 
* annotation: additional info on the cell type. usually molecular or functional name. 
* strat_nrml/strat_unrml : normalized/unnormalized stratification. two-column array, depth% in the IPL and values. 

it is constructed by calling scripts as below. 

* cell_info=cell_info_set_type();
* cell_info=cell_info_get_strat(cell_info,'m2_cells_property_nosoma_yymmdd.mat');

related matlab scripts are below. typedef scripts contain the most important type classification information. 

* cell_info_set_type.m
 * cell_info_typedef_ac.m
 * cell_info_typedef_bc.m
 * cell_info_typedef_gc.m         
* cell_info_get_strat.m

stratification profiles can be visualized as below with different options given as input arguments.

* cell_info_plot_strat(cell_info,{'37v','37c','37d','37r'},[],0,0,1,0,1);
