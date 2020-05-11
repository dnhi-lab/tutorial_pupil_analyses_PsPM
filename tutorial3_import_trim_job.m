%-----------------------------------------------------------------------
% Job saved on 23-Apr-2020 07:51:59 by cfg_util (rev $Rev: 380 $)
% pspm PsPM - Unknown
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.datafile = '<UNDEFINED>';
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.importtype{1}.marker.chan_nr.chan_nr_def = 0;
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.importtype{2}.pupil_l.chan_nr.chan_nr_spec = 1;
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.importtype{3}.pupil_r.chan_nr.chan_nr_spec = 2;
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.importtype{4}.gaze_x_l.chan_nr.chan_nr_spec = 3;
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.importtype{5}.gaze_x_r.chan_nr.chan_nr_spec = 4;
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.importtype{6}.gaze_y_l.chan_nr.chan_nr_spec = 5;
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.importtype{7}.gaze_y_r.chan_nr.chan_nr_spec = 6;
matlabbatch{1}.pspm{1}.prep{1}.import.datatype.eyelink.eyelink_trackdist = -1;
matlabbatch{1}.pspm{1}.prep{1}.import.overwrite = false;
matlabbatch{2}.pspm{1}.prep{1}.trim.datafile(1) = cfg_dep('Import: Output File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{':'}));
matlabbatch{2}.pspm{1}.prep{1}.trim.ref.ref_mrk.from = 0;
matlabbatch{2}.pspm{1}.prep{1}.trim.ref.ref_mrk.to = 5;
matlabbatch{2}.pspm{1}.prep{1}.trim.ref.ref_mrk.mrk_chan.chan_def = 0;
matlabbatch{2}.pspm{1}.prep{1}.trim.overwrite = false;
