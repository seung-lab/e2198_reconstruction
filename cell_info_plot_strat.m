function cell_info_plot_strat(cell_info,type_names,specific_cell_id,binstep,plot_as_onegroup,plot_type_average,plot_individual,fignum)

figure(fignum);
clf;
hold all;

strat=cell_info_bin_strat(cell_info,binstep);
cid=cell_info(find(strcmp({cell_info.type},type_names{1}),1)).cell_id;
x=strat{cid}(:,1);

if plot_as_onegroup==1

    cells=[];
    for j=1:numel(type_names)
        idx=strcmp({cell_info.type},type_names{j});
        cells=[cells cell_info(idx).cell_id];
    end
    colors=distinguishable_colors(numel(cells));

    for i=1:numel(cells)
        s(:,i)=strat{cells(i)}(:,2);
        if exist('plot_individual','var') && plot_individual==1
            plot(x,s(:,i),'Color',[0.4 0.4 0.8]);
%             plot(x,s(:,i),'Color',colors(mod(i-1,size(colors,1))+1,:));
        end
    end
    if exist('plot_type_average','var') && plot_type_average==1
        plot(x,mean(s,2),'Color',[0 0 1]);
    end
    
else
    
    if plot_individual==1
%         % different color for each cell
%         n_cells=0;
%         for j=1:numel(type_names)
%             n_cells=n_cells+sum(strcmp({cell_info.type},type_names{j}));
%         end
%         colors=distinguishable_colors(n_cells);
%         n_cells=0;
%         for j=1:numel(type_names)
%             cell_ids=[cell_info(strcmp({cell_info.type},type_names{j})).cell_id];
%             for i=1:numel(cell_ids)
%                 n_cells=n_cells+1;
%                 s=strat{cell_ids(i)}(:,2);
%                 plot(x,s,'Color',colors(n_cells,:));
%             end
%         end

        % same color for same type
        colors=distinguishable_colors(numel(type_names));
        for j=1:numel(type_names)
            cell_ids=[cell_info(strcmp({cell_info.type},type_names{j})).cell_id];
            for i=1:numel(cell_ids)
                s=strat{cell_ids(i)}(:,2);
                plot(x,s,'Color',colors(mod(j-1,size(colors,1))+1,:));
%                 plot(x,s,'Color',[150 150 200]/255);
            end
        end
    end        

    if plot_type_average==1    
        colors=distinguishable_colors(numel(type_names));
        for j=1:numel(type_names)
            s=[];
            cell_ids=[cell_info(strcmp({cell_info.type},type_names{j})).cell_id];
            for i=1:numel(cell_ids)
                s(:,i)=strat{cell_ids(i)}(:,2);
            end
            plot(x,mean(s,2),'LineWidth',2,'Color',colors(mod(j-1,size(colors,1))+1,:));
        end
        legstr=type_names;
        legend(legstr);
    end        
    
end

if ~isempty(specific_cell_id)
    plot(x,strat{specific_cell_id}(:,2),'LineWidth',2,'Color',[0.5 0.5 0.5]);
end

% ax=gca;
% ax.XLim=[-10 100];
% ax.Box='off';
% ax.YTick=[];
% ax.XTick=[];

end