dir_ana  = 'C:\PUPIL\PsPM-PubFe_analysis';
p_sub    = 1; % [1:9,11:18,21:22];

for i_sub = 1:length(p_sub)
    
    if p_sub(i_sub) < 10
        u_sub = ['0' num2str(p_sub(i_sub))];
    else
        u_sub = num2str(p_sub(i_sub));
    end
    
    % List of open inputs
    % First-Level Contrasts: Model File(s) - cfg_files
    nrun = 1; % enter the number of runs here
    jobfile = {'C:\PUPIL\tutorial3_contrast_job.m'};
    jobs = repmat(jobfile, 1, nrun);
    inputs = cell(1, nrun);
    for crun = 1:nrun
        inputs{1, crun} = {[dir_ana filesep 'PubFe_glm_A_' u_sub '.mat']}; % MATLAB_CODE_TO_FILL_INPUT; % First-Level Contrasts: Model File(s) - cfg_files
    end
    job_id = cfg_util('initjob', jobs);
    sts    = cfg_util('filljob', job_id, inputs{:});
    if sts
        cfg_util('run', job_id);
    end
    cfg_util('deljob', job_id);

end
