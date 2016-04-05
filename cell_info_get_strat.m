function cell_info=cell_info_get_strat(cell_info,cell_property_mat_file)

num_voxels_at_depth=[];
load(cell_property_mat_file,'num_voxels_at_depth');
idx=cellfun(@(x) ~isempty(strfind(x,'ON SAC')),{cell_info.type},'UniformOutput',false);
onsacs=[cell_info([idx{:}]).cell_id];
idx=cellfun(@(x) ~isempty(strfind(x,'OFF SAC')),{cell_info.type},'UniformOutput',false);
offsacs=[cell_info([idx{:}]).cell_id];

N=max([cell_info.cell_id]);
sum_num_voxels_of_cell=sum(num_voxels_at_depth,1);
fraction_voxels_at_depth=zeros(size(num_voxels_at_depth));
for i=1:N
    fraction_voxels_at_depth(:,i)=num_voxels_at_depth(:,i)/sum_num_voxels_of_cell(i);
end
avr_onsacs=mean(fraction_voxels_at_depth(:,onsacs),2);
avr_offsacs=mean(fraction_voxels_at_depth(:,offsacs),2);
[~,im_on]=max(avr_onsacs);
[~,im_off]=max(avr_offsacs);

% on:off = 62:28 = im_on:im_off >>> -20:120
pct_max=120;
pct_min=-20;
pct_on=62;
pct_off=28;
im_max=floor(im_off+(im_on-im_off)*(pct_max-pct_off)/(pct_on-pct_off));
im_min=ceil(im_off+(im_on-im_off)*(pct_min-pct_off)/(pct_on-pct_off));

x=pct_off+(pct_on-pct_off)*((im_max:im_min)-im_off)/(im_on-im_off);
del_x=abs(mean(diff(x)));

i_92=find(x>=92,1,'last');
i_80=find(x>=80,1,'last');
i_8=find(x<=8,1,'first');
i_20=find(x<=20,1,'first');

for j=1:numel(cell_info)
    
    cell_info(j).strat_unrml(:,1)=x;
    cell_info(j).strat_nrml(:,1)=x;
    
    s=num_voxels_at_depth(im_max:im_min,cell_info(j).cell_id);
%     if cell_info(j).soma==0 || (cell_info(j).class~=1 && cell_info(j).class~=2) || strcmp(cell_info(j).type,'weirdos')
%         % don't cut soma. keep the strat data. 
%     elseif cell_info(j).soma==2 % INL
%         [m,idx]=max(s(i_8:end));
%         s(i_8+idx-1:end)=m;
%         [m,idx]=min(s(i_20:end));
%         s(i_20+idx:end)=m/2;        
%     elseif cell_info(j).soma==1 % GCL
%         [m,idx]=max(s(1:i_92));
%         s(1:idx)=m;
%         [m,idx]=min(s(1:i_80));
%         s(1:idx-1)=m/2;        
%     end
    
    sum_voxels=sum(s);
    cell_info(j).strat_unrml(:,2)=s;
    cell_info(j).strat_nrml(:,2)=s/(del_x*sum_voxels);

end

end

