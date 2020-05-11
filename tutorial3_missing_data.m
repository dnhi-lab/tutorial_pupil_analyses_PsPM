%% quantify missing data
p_run = 21:23;

for i_run = 1:length(p_run)
    
    clear data infos
    load(['C:\PUPIL\PsPM-lum\tpspm_l_' num2str(p_run(i_run)) '.mat']);    
    
    data_missing(i_run,1) = sum( isnan( data{2,1}.data )) / size( data{2,1}.data, 1); 
    data_missing(i_run,2) = sum( isnan( data{3,1}.data )) / size( data{3,1}.data, 1);
    
end
