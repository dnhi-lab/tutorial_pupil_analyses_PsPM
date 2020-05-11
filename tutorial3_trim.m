% List of open inputs
% Trim: Data File(s) - cfg_files
nrun = X; % enter the number of runs here
jobfile = {'C:\PUPIL\tutorial3_trim_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(1, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % Trim: Data File(s) - cfg_files
end
job_id = cfg_util('initjob', jobs);
sts    = cfg_util('filljob', job_id, inputs{:});
if sts
    cfg_util('run', job_id);
end
cfg_util('deljob', job_id);
