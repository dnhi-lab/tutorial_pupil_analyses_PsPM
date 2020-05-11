dir_ana  = 'C:\PUPIL\PsPM-PubFe_analysis';
p_sub    = [1:9,11:18,21:22];

for i_sub = 1:length(p_sub)
    
    if p_sub(i_sub) < 10
        u_sub = ['0' num2str(p_sub(i_sub))];
    else
        u_sub = num2str(p_sub(i_sub));
    end
    
    clear L
    L = load([dir_ana filesep 'PubFe_glm_A_' u_sub '.mat']);
    get_L(i_sub,1) = L.glm.con.con;
    
end

[t_1,t_2,t_3,t_4] = ttest( get_L );