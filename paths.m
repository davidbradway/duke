function pth = paths( varargin )
%PATHS sets the paths of directories
%   can pass in the current 'pth' struct
%   pass out the new 'pth' struct of symbolic names
%   
%   Examples:
%     paths; global pth;
%     pth = paths; cd(pth.home)
%     pth.new='/home/dpb6/new';paths(pth)   
%   
%   Made by:
%   David dpb6
%   Postdoc - CFU, DTU, Denmark
%   2013-2014
if ~exist('pth', 'var')
    global pth
    disp('making ''pth'' global')
end

if nargin==1
    if isstruct(varargin{1})
        pth=varargin{1};
    elseif ischar(varargin{1})
        error('Error: argument must be struct.name=''/path'' ')
        return
    end
end

%% Put in paths
pth.data      ='/getlab/dpb6';
pth.home      ='/home/dpb6';
pth.code      ='/getlab/dpb6/repos/code';
pth.Field_II  ='/getlab/dpb6/repos/Field_II';
pth.calcsws   ='/getlab/dpb6/repos/calcsws';
pth.colormaps ='/getlab/dpb6/repos/colormaps';
pth.gpuBF     ='/getlab/dpb6/repos/gpuBF';
pth.URI       ='/getlab/dpb6/repos/URI';

pth.z          ='/getlab/dpb6/repos/arfi_code/z/';
pth.antares    ='/getlab/dpb6/repos/arfi_code/antares/trunk';
pth.arfi_image ='/getlab/dpb6/repos/arfi_code/arfi_image/trunk';
pth.radforce   ='/getlab/dpb6/repos/arfi_code/misc/radforce';
pth.radfrc     ='/getlab/dpb6/repos/arfi_code/misc/radfrc';
pth.sam        ='/getlab/dpb6/repos/arfi_code/sam/trunk';

pth.messina_Bmode_L12_5                            ='/getlab/dpb6/repos/messina/Bmode/L12_5';
pth.messina_SyntheticAperture_L12_5                ='/getlab/dpb6/repos/messina/SyntheticAperture/L12_5';
pth.messina_SyntheticAperture_P4_2                 ='/getlab/dpb6/repos/messina/SyntheticAperture/P4_2';
pth.messina_SyntheticAperture_L12_5_SAwithDoppler  ='/getlab/dpb6/repos/messina/SyntheticAperture/L12_5/SAwithDoppler';
pth.messina_SyntheticAperture_L12_5_SSequence      ='/getlab/dpb6/repos/messina/SyntheticAperture/L12_5/SSequence';

pth.SC2000_arfiImage ='/getlab/dpb6/repos/SC2000/arfiImage';
pth.SC2000_arfiProcCode ='/getlab/dpb6/repos/SC2000/arfiProcCode';

pth.ultratrack      ='/getlab/dpb6/repos/ultratrack';
pth.ultratrack_code ='/getlab/dpb6/repos/ultratrack/code';
pth.ultratrack_gui  ='/getlab/dpb6/repos/ultratrack/gui';

pth.mex_mexExample                    ='/getlab/dpb6/repos/mex/mexExample';
pth.mex_readFile_mex                  ='/getlab/dpb6/repos/mex/readFile_mex';
pth.mex_scan_convert                  ='/getlab/dpb6/repos/mex/scan_convert';
pth.mex_slsc_mex                      ='/getlab/dpb6/repos/mex/slsc_mex';
pth.mex_slsc_mex1                     ='/getlab/dpb6/repos/mex/slsc_mex1';
pth.mex_slsc_mex2                     ='/getlab/dpb6/repos/mex/slsc_mex2';

pth.ProcessArfiData                   ='/getlab/dpb6/repos/ProcessArfiData/';
pth.ProcessArfiData_GFPJJDexecutables ='/getlab/dpb6/repos/ProcessArfiData/GFPJJDexecutables';
pth.ProcessArfiData_routines          ='/getlab/dpb6/repos/ProcessArfiData/routines';
pth.ProcessArfiData_uriReader         ='/getlab/dpb6/repos/ProcessArfiData/uriReader';

pth.probes     ='/getlab/dpb6/repos/fem/probes';
pth.mesh       ='/getlab/dpb6/repos/fem/mesh';
pth.field      ='/getlab/dpb6/repos/fem/field';
pth.post       ='/getlab/dpb6/repos/fem/post';

%% DTU
pth.dtucode='/getlab/dpb6/repos/dtucode';
pth.dtucode_bft3_bft3_beta_1_24 ='/getlab/dpb6/repos/dtucode/bft3/bft3-beta-1-24';
pth.dtucode_CFUtools ='/getlab/dpb6/repos/dtucode/CFUtools';
pth.dtucode_evaluate_psf ='/getlab/dpb6/repos/dtucode/evaluate_psf';
pth.dtucode_interp ='/getlab/dpb6/repos/dtucode/interp';
pth.dtucode_jbo ='/getlab/dpb6/repos/dtucode/jbo';
pth.dtucode_measurement_scripts_intensity ='/getlab/dpb6/repos/dtucode/measurement_scripts_intensity';
pth.dtucode_standard_sim_scripts ='/getlab/dpb6/repos/dtucode/standard_sim_scripts';
pth.dtucode_TO_optimization_routines ='/getlab/dpb6/repos/dtucode/TO_optimization_routines';

%pth.bft3         ='/home/dpb6/bft3/bft3-beta-1-24/src';
%pth.fieldii      ='/home/dpb6/programming/matlab/toolbox/Field_II_linux_7_12';
%pth.intensity    ='/data/cfu/programs/measurement_programs/intensity_SARUS/measurement_scripts_intensity';
%pth.alignment    ='/data/cfu/programs/measurement_programs/intensity_SARUS/measurement_scripts_intensity/alignment_scripts';
%pth.procintens   ='/data/cfu/programs/measurement_programs/intensity_SARUS/proces_intensity';
%pth.scanconv     ='/getlab/dpb6/repos/code/interp';

%%
%get the names of all the fields
names = fieldnames(pth);
for i=1:length(names)
    a=getfield(pth,names{i});
    if exist(a,'dir')==7
        addpath(a)
    else
        warning([a ' does not exist'])
    end
end

%persist the struct of paths to the workspace
disp('To show custom paths, run:')
disp('global pth')
end
