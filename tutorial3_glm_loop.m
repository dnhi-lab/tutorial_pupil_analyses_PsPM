% PsPM-PubFe data from:
% https://bachlab.github.io/PsPM/opendata/
% https://zenodo.org/record/1168494#.XrlvN8DfPx8

dir_data = 'C:\PUPIL\PsPM-PubFe\Data';
dir_ana  = 'C:\PUPIL\PsPM-PubFe_analysis';
p_sub = 1; % [1:9,11:18,21:22];

for i_sub = 1:length(p_sub)
    
    if p_sub(i_sub) < 10
        u_sub = ['0' num2str(p_sub(i_sub))];
    else
        u_sub = num2str(p_sub(i_sub));
    end
    
    %% task data
    clear T sn1 sn2 D1 D2
    T = load([dir_data filesep 'PubFe_cogent_' u_sub '.mat']);
    sn1.data  = T.data( 1: 80, : );
    sn2.data  = T.data(81:160, : );
    sn1.cond1 = find( sn1.data(:,3)==1 & sn1.data(:,4)==0 );
    sn1.cond2 = find( sn1.data(:,3)==2 );
    sn2.cond1 = find( sn2.data(:,3)==1 & sn2.data(:,4)==0 );
    sn2.cond2 = find( sn2.data(:,3)==2 );
    
    D1 = load([dir_data filesep 'PubFe_pupil_' u_sub '_sn1.mat']);
    D2 = load([dir_data filesep 'PubFe_pupil_' u_sub '_sn2.mat']);
    sn1.cond1_sec = D1.data{1,1}.data( sn1.cond1 );
    sn1.cond2_sec = D1.data{1,1}.data( sn1.cond2 );
    sn2.cond1_sec = D2.data{1,1}.data( sn2.cond1 );
    sn2.cond2_sec = D2.data{1,1}.data( sn2.cond2 );

    %% pupil data
    % List of open inputs
    % GLM for PS (fear-conditioning): Model Filename - cfg_entry
    % GLM for PS (fear-conditioning): Output Directory - cfg_files
    % GLM for PS (fear-conditioning): Data File - cfg_files
    % GLM for PS (fear-conditioning): Onsets - cfg_entry
    % GLM for PS (fear-conditioning): Onsets - cfg_entry
    % GLM for PS (fear-conditioning): Data File - cfg_files
    % GLM for PS (fear-conditioning): Onsets - cfg_entry
    % GLM for PS (fear-conditioning): Onsets - cfg_entry
    nrun = 1; % enter the number of runs here
    jobfile = {'C:\PUPIL\tutorial3_glm_job.m'};
    jobs = repmat(jobfile, 1, nrun);
    inputs = cell(8, nrun);
    for crun = 1:nrun
        inputs{1, crun} = ['PubFe_glm_A_' u_sub];                               % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Model Filename - cfg_entry
        inputs{2, crun} = {dir_ana};                                            % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Output Directory - cfg_files
        inputs{3, crun} = {[dir_data filesep 'PubFe_pupil_' u_sub '_sn1.mat']}; % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Data File - cfg_files
        inputs{4, crun} = sn1.cond1_sec;                                        % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
        inputs{5, crun} = sn1.cond2_sec;                                        % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
        inputs{6, crun} = {[dir_data filesep 'PubFe_pupil_' u_sub '_sn2.mat']}; % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Data File - cfg_files
        inputs{7, crun} = sn2.cond1_sec;                                        % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
        inputs{8, crun} = sn2.cond2_sec;                                        % MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
    end
    job_id = cfg_util('initjob', jobs);
    sts    = cfg_util('filljob', job_id, inputs{:});
    if sts
        cfg_util('run', job_id);
    end
    cfg_util('deljob', job_id);

end
