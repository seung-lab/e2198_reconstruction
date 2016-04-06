function recon_preproc_remove_soma_from_bbox(cell_info,hdf5_in,hdf5_out)

system(sprintf('rsync --progress --partial %s %s',hdf5_in,hdf5_out));

addpath /data/research/jk/e2198/bin/zcode/matlab/hdf5

mipLevel=2;
mipFactor=2^mipLevel;

idx_cell_info_to_remove_soma=find(cellfun(@(x) ~isempty(x),{cell_info.soma_bbox}));

N=numel(idx_cell_info_to_remove_soma);
for i=1:N

    idx=idx_cell_info_to_remove_soma(i);
    cell_id=cell_info(idx).cell_id;
    bbox=cell_info(idx).soma_bbox;
    
    st=round(bbox([1 3 5])/mipFactor);
    ed=round(bbox([2 4 6])/mipFactor);

    fprintf('%d (%d/%d): [%d %d %d]~[%d %d %d]\n',cell_id,i,N,st,ed);
    
    chunkDst=get_hdf5_file(hdf5_out,'/main',st,ed);
    chunkDst(chunkDst==cell_id)=0;
    write_hdf5_file(hdf5_out,'/main',st,ed,chunkDst);
    
end

end

