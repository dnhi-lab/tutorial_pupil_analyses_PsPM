% List of open inputs
% GLM for PS (fear-conditioning): Model Filename - cfg_entry
% GLM for PS (fear-conditioning): Output Directory - cfg_files
% GLM for PS (fear-conditioning): Data File - cfg_files
% GLM for PS (fear-conditioning): Onsets - cfg_entry
% GLM for PS (fear-conditioning): Onsets - cfg_entry
% GLM for PS (fear-conditioning): Data File - cfg_files
% GLM for PS (fear-conditioning): Onsets - cfg_entry
% GLM for PS (fear-conditioning): Onsets - cfg_entry
nrun = X; % enter the number of runs here
jobfile = {'C:\PUPIL\tutorial3_glm_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(8, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Model Filename - cfg_entry
    inputs{2, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Output Directory - cfg_files
    inputs{3, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Data File - cfg_files
    inputs{4, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
    inputs{5, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
    inputs{6, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Data File - cfg_files
    inputs{7, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
    inputs{8, crun} = MATLAB_CODE_TO_FILL_INPUT; % GLM for PS (fear-conditioning): Onsets - cfg_entry
end
job_id = cfg_util('initjob', jobs);
sts    = cfg_util('filljob', job_id, inputs{:});
if sts
    cfg_util('run', job_id);
end
cfg_util('deljob', job_id);