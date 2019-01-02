
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 02:13:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 02:37:47 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545466395 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.04583E+00  9.97315E-01  9.98692E-01  9.93376E-01  9.97143E-01  9.74582E-01  9.92284E-01  1.00078E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.3E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95758E+00 1.2E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.49271E+01 8.1E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.46278E+01 8.3E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.99244E-01 0.00018  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 100001529 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00003E+05 0.00015 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  2.00003E+05 0.00015 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.99931E+01 ;
RUNNING_TIME              (idx, 1)        =  2.45197E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  6.34500E-02  6.34500E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  3.33349E-05  3.33349E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.44561E+01  2.44561E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.45192E+01  2.49636E+01 ];
CPU_USAGE                 (idx, 1)        = 3.67025 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.68526E+00 8.9E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.02278E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5235.20;
XS_MEMSIZE                (idx, 1)        = 14.02;
MAT_MEMSIZE               (idx, 1)        = 1.33;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 21578 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99573E-06 8.1E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 1 8 ];
COEF_BRANCH             (idx, 1)        = 1 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38384E-01 0.00030 ];
TH232_FISS                (idx, [1:   4]) = [  4.99389E-03 0.00140  9.76022E-03 0.00138 ];
U233_FISS                 (idx, [1:   4]) = [  5.06661E-01 0.00015  9.90240E-01 1.4E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.31770E-01 0.00027  6.96361E-01 0.00016 ];
U233_CAPT                 (idx, [1:   4]) = [  4.59979E-02 0.00046  2.43085E-01 0.00041 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 100001529 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.95354E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 100001529 1.00100E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18918799 1.89388E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 51157871 5.12092E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 29924859 2.99516E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 100001529 1.00100E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 1.08927E-05 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.63315E-11 7.0E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.29237E+00 6.9E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.11586E-01 7.0E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.89154E-01 8.6E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  7.00740E-01 7.3E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99146E-01 8.1E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.88670E+01 6.4E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.99260E-01 0.00017 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.46309E+01 6.6E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  7.00484E-01 7.5E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52620E+00 2.2E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99249E+02 2.1E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29370E+00 0.00010  1.28970E+00 0.00010  3.96523E-03 0.00257 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29365E+00 6.9E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29348E+00 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29365E+00 6.9E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84690E+00 1.1E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.15188E+00 5.2E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.15197E+00 4.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.25907E-02 0.00032 ];
IMP_EALF                  (idx, [1:   2]) = [  4.25863E-02 0.00027 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.74434E-01 0.00033 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.74355E-01 0.00014 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.30884E-03 0.00181  1.78945E-04 0.00672  3.52113E-04 0.00486  3.03338E-04 0.00507  4.73017E-04 0.00401  7.20211E-04 0.00321  1.00630E-04 0.00859  1.49640E-04 0.00708  3.09431E-05 0.01544 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.12032E-01 0.00311  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.09885E-03 0.00261  2.45134E-04 0.00985  4.71499E-04 0.00698  4.07175E-04 0.00730  6.33775E-04 0.00570  9.64680E-04 0.00476  1.34547E-04 0.01291  1.99497E-04 0.01074  4.25402E-05 0.02354 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.12176E-01 0.00472  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.59618E-07 0.00027  2.59452E-07 0.00027  3.13689E-07 0.00395 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.35867E-07 0.00026  3.35652E-07 0.00026  4.05814E-07 0.00394 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.06498E-03 0.00260  2.39919E-04 0.00891  4.64373E-04 0.00689  4.05389E-04 0.00666  6.26225E-04 0.00566  9.56904E-04 0.00450  1.31347E-04 0.01180  2.00614E-04 0.00992  4.02141E-05 0.02156 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.11517E-01 0.00428  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.59440E-07 0.00066  2.59271E-07 0.00066  3.13813E-07 0.01047 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.35636E-07 0.00065  3.35418E-07 0.00065  4.05979E-07 0.01047 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.07436E-03 0.00796  2.56033E-04 0.02809  4.64612E-04 0.02083  4.01541E-04 0.02234  6.35164E-04 0.01776  9.54626E-04 0.01463  1.21124E-04 0.04116  1.99489E-04 0.03313  4.17724E-05 0.07675 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.08887E-01 0.01480  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.07523E-03 0.00773  2.55224E-04 0.02736  4.64676E-04 0.01998  4.01578E-04 0.02106  6.38284E-04 0.01722  9.55295E-04 0.01417  1.22141E-04 0.04042  1.97067E-04 0.03230  4.09615E-05 0.07383 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.06898E-01 0.01438  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.18607E+04 0.00801 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.59904E-07 0.00017 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.36237E-07 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.07443E-03 0.00147 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.18291E+04 0.00146 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.82128E-09 0.00010 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.73567E+01 0.00373 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.46278E+01 8.3E-05  2.65890E+01 0.00010 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.20680E+06 0.00088  5.39692E+06 0.00026  1.26793E+07 0.00023  1.90989E+07 0.00019  2.29587E+07 0.00012  2.82551E+07 0.00012  1.45650E+07 0.00012  1.25390E+07 0.00014  2.69331E+07 0.00014  2.56065E+07 0.00014  3.06745E+07 0.00012  2.73056E+07 0.00017  2.81324E+07 0.00019  2.09730E+07 0.00019  1.52648E+07 0.00023  9.36935E+06 0.00022  6.36721E+06 0.00024  3.93451E+06 0.00037  2.30376E+06 0.00054  1.79188E+06 0.00077  3.43165E+05 0.00161  3.42395E+04 0.00436  3.35267E+03 0.00706  1.05909E+03 0.01675  9.12622E+01 0.04091  5.86402E+00 0.19866  4.01230E+00 0.29173  6.07097E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.16807E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84655E+00 0.00011 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  7.88672E+01 9.4E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  3.12310E-01 7.5E-06 ];
INF_CAPT                  (idx, [1:   2]) = [  2.39840E-03 6.5E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.88510E-03 4.9E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.48670E-03 4.5E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.63867E-02 4.4E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52620E+00 2.1E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99249E+02 1.9E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.82129E-09 9.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  3.03423E-01 8.4E-06 ];
INF_SCATT1                (idx, [1:   2]) = [  2.59002E-02 0.00011 ];
INF_SCATT2                (idx, [1:   2]) = [  8.73621E-03 0.00033 ];
INF_SCATT3                (idx, [1:   2]) = [  3.06327E-03 0.00049 ];
INF_SCATT4                (idx, [1:   2]) = [  1.67932E-03 0.00155 ];
INF_SCATT5                (idx, [1:   2]) = [  6.47461E-04 0.00293 ];
INF_SCATT6                (idx, [1:   2]) = [  2.93529E-04 0.00752 ];
INF_SCATT7                (idx, [1:   2]) = [  1.14019E-04 0.01767 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  3.03435E-01 8.4E-06 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.59002E-02 0.00011 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.73620E-03 0.00033 ];
INF_SCATTP3               (idx, [1:   2]) = [  3.06325E-03 0.00049 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.67933E-03 0.00155 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.47437E-04 0.00293 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.93536E-04 0.00753 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.14008E-04 0.01767 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.66761E-01 1.9E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.24956E+00 1.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.87249E-03 4.9E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.88684E-03 9.4E-05 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  3.03423E-01 8.4E-06 ];
INF_S1                    (idx, [1:   2]) = [  2.59002E-02 0.00011 ];
INF_S2                    (idx, [1:   2]) = [  8.73621E-03 0.00033 ];
INF_S3                    (idx, [1:   2]) = [  3.06327E-03 0.00049 ];
INF_S4                    (idx, [1:   2]) = [  1.67932E-03 0.00155 ];
INF_S5                    (idx, [1:   2]) = [  6.47461E-04 0.00293 ];
INF_S6                    (idx, [1:   2]) = [  2.93529E-04 0.00752 ];
INF_S7                    (idx, [1:   2]) = [  1.14019E-04 0.01767 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  3.03435E-01 8.4E-06 ];
INF_SP1                   (idx, [1:   2]) = [  2.59002E-02 0.00011 ];
INF_SP2                   (idx, [1:   2]) = [  8.73620E-03 0.00033 ];
INF_SP3                   (idx, [1:   2]) = [  3.06325E-03 0.00049 ];
INF_SP4                   (idx, [1:   2]) = [  1.67933E-03 0.00155 ];
INF_SP5                   (idx, [1:   2]) = [  6.47437E-04 0.00293 ];
INF_SP6                   (idx, [1:   2]) = [  2.93536E-04 0.00753 ];
INF_SP7                   (idx, [1:   2]) = [  1.14008E-04 0.01767 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.11371E-01 0.00014 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.16282E-01 0.00020 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.16267E-01 0.00019 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  4.01904E-01 0.00019 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.10298E-01 0.00014 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.00740E-01 0.00020 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.00768E-01 0.00019 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.29386E-01 0.00019 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.09885E-03 0.00261  2.45134E-04 0.00985  4.71499E-04 0.00698  4.07175E-04 0.00730  6.33775E-04 0.00570  9.64680E-04 0.00476  1.34547E-04 0.01291  1.99497E-04 0.01074  4.25402E-05 0.02354 ];
LAMBDA                    (idx, [1:  18]) = [  3.12176E-01 0.00472  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 02:37:47 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 03:02:01 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545467867 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.05197E+00  1.00041E+00  9.91425E-01  1.00260E+00  9.99377E-01  9.75954E-01  9.92331E-01  9.85935E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95728E+00 1.1E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.48117E+01 8.1E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.45079E+01 8.3E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.03865E-01 0.00016  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 100001007 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00002E+05 0.00014 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  2.00002E+05 0.00014 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.78925E+02 ;
RUNNING_TIME              (idx, 1)        =  4.87630E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.28150E-01  6.47000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  6.66698E-05  3.33349E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.86319E+01  2.41758E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.87626E+01  1.95888E+02 ];
CPU_USAGE                 (idx, 1)        = 3.66929 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.68828E+00 0.00125 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.01645E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5235.20;
XS_MEMSIZE                (idx, 1)        = 14.02;
MAT_MEMSIZE               (idx, 1)        = 1.33;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 21578 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99498E-06 8.2E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 2 8 ];
COEF_BRANCH             (idx, 1)        = 2 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38280E-01 0.00031 ];
TH232_FISS                (idx, [1:   4]) = [  4.96532E-03 0.00146  9.76898E-03 0.00145 ];
U233_FISS                 (idx, [1:   4]) = [  5.03305E-01 0.00014  9.90231E-01 1.4E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.30828E-01 0.00028  6.96334E-01 0.00016 ];
U233_CAPT                 (idx, [1:   4]) = [  4.56429E-02 0.00050  2.42934E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 100001007 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.89747E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 100001007 1.00099E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18787072 1.88070E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 50827116 5.08781E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 30386819 3.04139E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 100001007 1.00099E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 1.87755E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.62249E-11 6.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.28402E+00 6.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.08249E-01 6.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.87917E-01 8.3E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  6.96166E-01 7.0E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98996E-01 8.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.93054E+01 6.4E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  3.03834E-01 0.00016 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.45073E+01 6.5E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  6.95861E-01 7.2E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52635E+00 2.3E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99249E+02 2.2E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.28534E+00 0.00010  1.28141E+00 0.00010  3.96535E-03 0.00254 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.28529E+00 6.6E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.28531E+00 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.28529E+00 6.6E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84704E+00 1.0E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.14377E+00 5.3E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.14341E+00 4.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.29374E-02 0.00033 ];
IMP_EALF                  (idx, [1:   2]) = [  4.29524E-02 0.00028 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.75827E-01 0.00032 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.75970E-01 0.00015 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.33703E-03 0.00189  1.81599E-04 0.00654  3.56408E-04 0.00478  3.12094E-04 0.00507  4.76151E-04 0.00412  7.26294E-04 0.00323  1.00183E-04 0.00909  1.51789E-04 0.00763  3.25124E-05 0.01562 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.13124E-01 0.00336  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.12188E-03 0.00273  2.45361E-04 0.00906  4.73867E-04 0.00663  4.22099E-04 0.00698  6.34377E-04 0.00579  9.67525E-04 0.00496  1.31516E-04 0.01284  2.03828E-04 0.01078  4.33090E-05 0.02247 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.12743E-01 0.00472  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.62456E-07 0.00028  2.62290E-07 0.00028  3.15965E-07 0.00414 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.37344E-07 0.00027  3.37130E-07 0.00027  4.06118E-07 0.00414 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.08572E-03 0.00254  2.42963E-04 0.00889  4.67635E-04 0.00601  4.14105E-04 0.00684  6.27930E-04 0.00575  9.57900E-04 0.00450  1.32856E-04 0.01303  1.98802E-04 0.01032  4.35235E-05 0.02101 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.12872E-01 0.00468  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.62826E-07 0.00066  2.62664E-07 0.00066  3.14109E-07 0.01039 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.37819E-07 0.00065  3.37611E-07 0.00065  4.03746E-07 0.01040 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.08279E-03 0.00785  2.46457E-04 0.02939  4.59097E-04 0.01996  4.20328E-04 0.02220  6.20128E-04 0.01922  9.49714E-04 0.01482  1.32729E-04 0.03927  2.06949E-04 0.02916  4.73833E-05 0.06147 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.22184E-01 0.01335  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.08101E-03 0.00758  2.45104E-04 0.02849  4.60370E-04 0.01898  4.19234E-04 0.02129  6.18321E-04 0.01823  9.50898E-04 0.01432  1.33669E-04 0.03814  2.05955E-04 0.02843  4.74566E-05 0.06119 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.21357E-01 0.01297  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.17401E+04 0.00791 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.62961E-07 0.00017 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.37993E-07 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.09319E-03 0.00152 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.17631E+04 0.00153 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.80876E-09 0.00010 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.74045E+01 0.00368 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.45079E+01 8.3E-05  2.65034E+01 0.00011 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.21782E+06 0.00069  5.44761E+06 0.00035  1.27904E+07 0.00020  1.92669E+07 0.00014  2.31544E+07 0.00014  2.84848E+07 0.00012  1.46785E+07 0.00016  1.26330E+07 0.00014  2.71235E+07 0.00010  2.57845E+07 0.00013  3.08539E+07 0.00017  2.74410E+07 0.00015  2.82418E+07 0.00019  2.10267E+07 0.00020  1.52837E+07 0.00027  9.37369E+06 0.00029  6.35822E+06 0.00034  3.92307E+06 0.00036  2.29484E+06 0.00052  1.78424E+06 0.00065  3.40306E+05 0.00168  3.36172E+04 0.00361  3.38475E+03 0.01196  1.04438E+03 0.02256  9.09851E+01 0.04356  8.34864E+00 0.17743  3.58724E+00 0.28283  1.17970E-01 0.69872  2.81145E-01 0.55478  1.09581E-01 0.71630  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  6.80835E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84708E+00 0.00010 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  7.93056E+01 9.1E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  3.09024E-01 8.9E-06 ];
INF_CAPT                  (idx, [1:   2]) = [  2.36955E-03 6.9E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.77831E-03 5.3E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.40877E-03 4.8E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.61908E-02 4.7E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52635E+00 2.3E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99249E+02 2.3E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.80877E-09 9.7E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  3.00246E-01 9.6E-06 ];
INF_SCATT1                (idx, [1:   2]) = [  2.56610E-02 0.00017 ];
INF_SCATT2                (idx, [1:   2]) = [  8.66839E-03 0.00036 ];
INF_SCATT3                (idx, [1:   2]) = [  3.03862E-03 0.00068 ];
INF_SCATT4                (idx, [1:   2]) = [  1.66361E-03 0.00141 ];
INF_SCATT5                (idx, [1:   2]) = [  6.38726E-04 0.00250 ];
INF_SCATT6                (idx, [1:   2]) = [  2.92273E-04 0.00708 ];
INF_SCATT7                (idx, [1:   2]) = [  1.11673E-04 0.01153 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  3.00258E-01 9.7E-06 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.56611E-02 0.00017 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.66840E-03 0.00036 ];
INF_SCATTP3               (idx, [1:   2]) = [  3.03863E-03 0.00067 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.66362E-03 0.00141 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.38735E-04 0.00250 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.92289E-04 0.00708 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.11673E-04 0.01152 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.63874E-01 2.9E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.26323E+00 2.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.76584E-03 5.3E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.77808E-03 8.4E-05 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  3.00246E-01 9.6E-06 ];
INF_S1                    (idx, [1:   2]) = [  2.56610E-02 0.00017 ];
INF_S2                    (idx, [1:   2]) = [  8.66839E-03 0.00036 ];
INF_S3                    (idx, [1:   2]) = [  3.03862E-03 0.00068 ];
INF_S4                    (idx, [1:   2]) = [  1.66361E-03 0.00141 ];
INF_S5                    (idx, [1:   2]) = [  6.38726E-04 0.00250 ];
INF_S6                    (idx, [1:   2]) = [  2.92273E-04 0.00708 ];
INF_S7                    (idx, [1:   2]) = [  1.11673E-04 0.01153 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  3.00258E-01 9.7E-06 ];
INF_SP1                   (idx, [1:   2]) = [  2.56611E-02 0.00017 ];
INF_SP2                   (idx, [1:   2]) = [  8.66840E-03 0.00036 ];
INF_SP3                   (idx, [1:   2]) = [  3.03863E-03 0.00067 ];
INF_SP4                   (idx, [1:   2]) = [  1.66362E-03 0.00141 ];
INF_SP5                   (idx, [1:   2]) = [  6.38735E-04 0.00250 ];
INF_SP6                   (idx, [1:   2]) = [  2.92289E-04 0.00708 ];
INF_SP7                   (idx, [1:   2]) = [  1.11673E-04 0.01152 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.10423E-01 0.00017 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.15396E-01 0.00025 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.15354E-01 0.00027 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  4.00866E-01 0.00025 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.12171E-01 0.00017 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.02449E-01 0.00025 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.02530E-01 0.00027 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.31535E-01 0.00025 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.12188E-03 0.00273  2.45361E-04 0.00906  4.73867E-04 0.00663  4.22099E-04 0.00698  6.34377E-04 0.00579  9.67525E-04 0.00496  1.31516E-04 0.01284  2.03828E-04 0.01078  4.33090E-05 0.02247 ];
LAMBDA                    (idx, [1:  18]) = [  3.12743E-01 0.00472  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 03:02:01 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 03:25:53 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545469321 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.04684E+00  9.96048E-01  9.97801E-01  1.00037E+00  9.94897E-01  9.72341E-01  9.97133E-01  9.94567E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.1E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95694E+00 1.1E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.46961E+01 8.2E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.43877E+01 8.3E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.08393E-01 0.00017  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 100000861 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00002E+05 0.00015 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  2.00002E+05 0.00015 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.67348E+02 ;
RUNNING_TIME              (idx, 1)        =  7.26274E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.90450E-01  6.23000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.00001E-04  3.33309E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  7.24313E+01  2.37994E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  7.26270E+01  1.93818E+02 ];
CPU_USAGE                 (idx, 1)        = 3.68109 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.72033E+00 6.4E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.02339E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5235.20;
XS_MEMSIZE                (idx, 1)        = 14.02;
MAT_MEMSIZE               (idx, 1)        = 1.33;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 21578 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99471E-06 8.1E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 3 8 ];
COEF_BRANCH             (idx, 1)        = 3 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38359E-01 0.00031 ];
TH232_FISS                (idx, [1:   4]) = [  4.98598E-03 0.00144  9.87476E-03 0.00142 ];
U233_FISS                 (idx, [1:   4]) = [  4.99934E-01 0.00014  9.90125E-01 1.4E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.29984E-01 0.00027  6.96338E-01 0.00015 ];
U233_CAPT                 (idx, [1:   4]) = [  4.52903E-02 0.00045  2.42625E-01 0.00039 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 100000861 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.93891E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 100000861 1.00099E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18666626 1.86866E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 50494644 5.05454E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 30839591 3.08674E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 100000861 1.00099E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -4.79817E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.61200E-11 6.9E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.27580E+00 6.8E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.04962E-01 6.9E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.86691E-01 8.6E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  6.91653E-01 7.2E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98942E-01 8.1E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.97628E+01 6.0E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  3.08347E-01 0.00016 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.43860E+01 6.1E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  6.91326E-01 7.4E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52652E+00 2.2E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99249E+02 2.1E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.27703E+00 0.00011  1.27313E+00 0.00010  3.92454E-03 0.00231 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.27706E+00 6.8E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.27715E+00 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.27706E+00 6.8E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84720E+00 1.0E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.13431E+00 5.2E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.13451E+00 4.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.33457E-02 0.00032 ];
IMP_EALF                  (idx, [1:   2]) = [  4.33365E-02 0.00027 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.77751E-01 0.00033 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.77666E-01 0.00014 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.34639E-03 0.00173  1.81523E-04 0.00648  3.55772E-04 0.00448  3.09338E-04 0.00491  4.77374E-04 0.00398  7.33433E-04 0.00341  1.01861E-04 0.00848  1.54367E-04 0.00691  3.27221E-05 0.01515 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.15419E-01 0.00318  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.11962E-03 0.00258  2.46222E-04 0.00960  4.69629E-04 0.00690  4.12783E-04 0.00718  6.36319E-04 0.00585  9.71320E-04 0.00453  1.33803E-04 0.01316  2.06640E-04 0.01036  4.29038E-05 0.02266 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.14753E-01 0.00448  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.65194E-07 0.00028  2.65022E-07 0.00028  3.21087E-07 0.00418 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.38658E-07 0.00026  3.38438E-07 0.00027  4.10035E-07 0.00418 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.07513E-03 0.00230  2.41817E-04 0.00924  4.59288E-04 0.00635  4.06054E-04 0.00669  6.28228E-04 0.00554  9.59409E-04 0.00436  1.32475E-04 0.01236  2.04725E-04 0.00967  4.31378E-05 0.02109 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.16617E-01 0.00447  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.65496E-07 0.00066  2.65323E-07 0.00066  3.22815E-07 0.01084 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.39043E-07 0.00065  3.38823E-07 0.00065  4.12240E-07 0.01085 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.06796E-03 0.00798  2.43361E-04 0.02884  4.57771E-04 0.02147  4.00313E-04 0.02181  6.24172E-04 0.01754  9.61433E-04 0.01490  1.32664E-04 0.03925  2.01792E-04 0.03127  4.64557E-05 0.06848 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.20860E-01 0.01491  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.06078E-03 0.00792  2.39688E-04 0.02825  4.57370E-04 0.02089  4.03642E-04 0.02106  6.22103E-04 0.01674  9.59484E-04 0.01461  1.30405E-04 0.03863  2.02873E-04 0.03030  4.52149E-05 0.06467 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.19897E-01 0.01409  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.15670E+04 0.00802 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.65740E-07 0.00016 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.39355E-07 0.00012 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.07078E-03 0.00157 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.15558E+04 0.00159 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.79588E-09 0.00010 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.72929E+01 0.00387 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.43877E+01 8.3E-05  2.64107E+01 0.00010 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.22965E+06 0.00065  5.49552E+06 0.00036  1.29136E+07 0.00026  1.94435E+07 0.00020  2.33586E+07 0.00014  2.87114E+07 0.00011  1.47986E+07 9.9E-05  1.27295E+07 0.00015  2.73198E+07 0.00012  2.59590E+07 0.00012  3.10366E+07 0.00015  2.75777E+07 0.00010  2.83495E+07 0.00013  2.10840E+07 0.00013  1.53043E+07 0.00021  9.37770E+06 0.00024  6.35378E+06 0.00034  3.91387E+06 0.00044  2.28685E+06 0.00075  1.77165E+06 0.00075  3.37282E+05 0.00177  3.30366E+04 0.00354  3.21222E+03 0.01114  1.07688E+03 0.01744  9.08828E+01 0.05331  9.05921E+00 0.14271  3.46309E+00 0.25914  2.37468E-01 0.76499  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.89766E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84739E+00 0.00011 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  7.97630E+01 4.8E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  3.05731E-01 1.2E-05 ];
INF_CAPT                  (idx, [1:   2]) = [  2.34058E-03 7.9E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.67139E-03 6.1E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.33081E-03 5.6E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.59949E-02 5.4E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52652E+00 2.3E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99249E+02 2.6E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.79588E-09 0.00011 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  2.97061E-01 1.2E-05 ];
INF_SCATT1                (idx, [1:   2]) = [  2.54245E-02 0.00017 ];
INF_SCATT2                (idx, [1:   2]) = [  8.59449E-03 0.00028 ];
INF_SCATT3                (idx, [1:   2]) = [  3.01790E-03 0.00080 ];
INF_SCATT4                (idx, [1:   2]) = [  1.65956E-03 0.00115 ];
INF_SCATT5                (idx, [1:   2]) = [  6.36727E-04 0.00256 ];
INF_SCATT6                (idx, [1:   2]) = [  2.92040E-04 0.00552 ];
INF_SCATT7                (idx, [1:   2]) = [  1.14210E-04 0.01459 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  2.97073E-01 1.2E-05 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.54245E-02 0.00017 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.59453E-03 0.00028 ];
INF_SCATTP3               (idx, [1:   2]) = [  3.01789E-03 0.00080 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.65956E-03 0.00116 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.36712E-04 0.00256 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.92050E-04 0.00552 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.14206E-04 0.01461 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.60982E-01 3.5E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.27723E+00 3.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.65894E-03 6.2E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.67053E-03 7.7E-05 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  2.97061E-01 1.2E-05 ];
INF_S1                    (idx, [1:   2]) = [  2.54245E-02 0.00017 ];
INF_S2                    (idx, [1:   2]) = [  8.59449E-03 0.00028 ];
INF_S3                    (idx, [1:   2]) = [  3.01790E-03 0.00080 ];
INF_S4                    (idx, [1:   2]) = [  1.65956E-03 0.00115 ];
INF_S5                    (idx, [1:   2]) = [  6.36727E-04 0.00256 ];
INF_S6                    (idx, [1:   2]) = [  2.92040E-04 0.00552 ];
INF_S7                    (idx, [1:   2]) = [  1.14210E-04 0.01459 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  2.97073E-01 1.2E-05 ];
INF_SP1                   (idx, [1:   2]) = [  2.54245E-02 0.00017 ];
INF_SP2                   (idx, [1:   2]) = [  8.59453E-03 0.00028 ];
INF_SP3                   (idx, [1:   2]) = [  3.01789E-03 0.00080 ];
INF_SP4                   (idx, [1:   2]) = [  1.65956E-03 0.00116 ];
INF_SP5                   (idx, [1:   2]) = [  6.36712E-04 0.00256 ];
INF_SP6                   (idx, [1:   2]) = [  2.92050E-04 0.00552 ];
INF_SP7                   (idx, [1:   2]) = [  1.14206E-04 0.01461 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.09595E-01 0.00018 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.14713E-01 0.00017 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.14590E-01 0.00027 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  3.99845E-01 0.00029 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.13812E-01 0.00018 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.03770E-01 0.00017 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.04008E-01 0.00027 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.33659E-01 0.00029 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.11962E-03 0.00258  2.46222E-04 0.00960  4.69629E-04 0.00690  4.12783E-04 0.00718  6.36319E-04 0.00585  9.71320E-04 0.00453  1.33803E-04 0.01316  2.06640E-04 0.01036  4.29038E-05 0.02266 ];
LAMBDA                    (idx, [1:  18]) = [  3.14753E-01 0.00448  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 03:25:53 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 03:49:39 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545470753 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.05553E+00  9.93248E-01  9.94194E-01  9.95636E-01  9.99296E-01  9.69805E-01  9.96371E-01  9.95924E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95671E+00 1.1E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.46214E+01 8.0E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.43102E+01 8.1E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.11251E-01 0.00016  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 99999682 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.99999E+05 0.00015 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.99999E+05 0.00015 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  3.55190E+02 ;
RUNNING_TIME              (idx, 1)        =  9.63917E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  2.52817E-01  6.23667E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.33336E-04  3.33349E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  9.61303E+01  2.36989E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  9.63913E+01  1.91838E+02 ];
CPU_USAGE                 (idx, 1)        = 3.68486 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.71136E+00 0.00032 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.02186E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5235.20;
XS_MEMSIZE                (idx, 1)        = 14.02;
MAT_MEMSIZE               (idx, 1)        = 1.33;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 21578 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99498E-06 7.9E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 4 8 ];
COEF_BRANCH             (idx, 1)        = 4 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38219E-01 0.00032 ];
TH232_FISS                (idx, [1:   4]) = [  4.96514E-03 0.00141  9.87342E-03 0.00141 ];
U233_FISS                 (idx, [1:   4]) = [  4.97915E-01 0.00015  9.90127E-01 1.4E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.29387E-01 0.00027  6.96062E-01 0.00014 ];
U233_CAPT                 (idx, [1:   4]) = [  4.51250E-02 0.00045  2.42758E-01 0.00039 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 99999682 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.88807E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 99999682 1.00099E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18587333 1.86072E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 50287372 5.03385E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 31124977 3.11532E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 99999682 1.00099E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.50353E-05 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.60537E-11 6.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.27060E+00 6.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.02885E-01 6.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.85897E-01 8.1E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  6.88782E-01 6.9E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98996E-01 7.9E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  8.00298E+01 6.3E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  3.11218E-01 0.00015 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.43095E+01 6.4E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  2.48771E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  1.45517E-08 1.00000 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.02354E+05 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  6.88468E-01 7.2E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  3.70526E-03 1.00000 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  2.55005E-03 1.00000 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52662E+00 2.1E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99249E+02 2.1E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.27190E+00 0.00011  1.26797E+00 0.00011  3.91783E-03 0.00249 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.27185E+00 6.6E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.27188E+00 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.27185E+00 6.6E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84735E+00 1.0E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.12849E+00 5.1E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.12881E+00 4.3E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.35987E-02 0.00032 ];
IMP_EALF                  (idx, [1:   2]) = [  4.35840E-02 0.00026 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.78837E-01 0.00032 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.78755E-01 0.00014 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.35421E-03 0.00176  1.82259E-04 0.00649  3.56743E-04 0.00467  3.10184E-04 0.00502  4.79093E-04 0.00384  7.38545E-04 0.00320  1.02341E-04 0.00913  1.52541E-04 0.00687  3.24994E-05 0.01515 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.13634E-01 0.00309  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.10679E-03 0.00256  2.43523E-04 0.00994  4.68654E-04 0.00663  4.08992E-04 0.00722  6.35958E-04 0.00568  9.69273E-04 0.00484  1.33619E-04 0.01264  2.04439E-04 0.01010  4.23354E-05 0.02212 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.13938E-01 0.00434  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.66972E-07 0.00029  2.66803E-07 0.00030  3.21409E-07 0.00422 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.39561E-07 0.00027  3.39346E-07 0.00027  4.08796E-07 0.00421 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.08041E-03 0.00248  2.39945E-04 0.00950  4.67057E-04 0.00634  4.08180E-04 0.00714  6.27777E-04 0.00495  9.61722E-04 0.00442  1.34081E-04 0.01217  1.99311E-04 0.00936  4.23376E-05 0.02155 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.12834E-01 0.00432  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.67421E-07 0.00067  2.67264E-07 0.00068  3.19112E-07 0.01104 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.40133E-07 0.00067  3.39932E-07 0.00067  4.05890E-07 0.01104 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.11349E-03 0.00819  2.47698E-04 0.02991  4.58560E-04 0.02072  4.15066E-04 0.02340  6.39782E-04 0.01770  9.58175E-04 0.01452  1.43927E-04 0.03801  2.06641E-04 0.03110  4.36378E-05 0.06806 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.17187E-01 0.01403  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.11304E-03 0.00791  2.47400E-04 0.02878  4.61817E-04 0.02052  4.13167E-04 0.02224  6.41614E-04 0.01709  9.56398E-04 0.01379  1.43395E-04 0.03625  2.05681E-04 0.03002  4.35721E-05 0.06562 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.16497E-01 0.01344  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.16506E+04 0.00818 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.67528E-07 0.00017 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.40267E-07 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.08918E-03 0.00165 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.15472E+04 0.00165 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.78763E-09 9.7E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.39936E-10 1.00000  1.39936E-10 1.00000  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  8.09427E-09 1.00000  8.09427E-09 1.00000  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  1.00148E-08 1.00000  1.00367E-08 1.00000  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.73287E+01 0.00399 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.43102E+01 8.1E-05  2.63537E+01 0.00010 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.23481E+06 0.00079  5.52893E+06 0.00033  1.29845E+07 0.00019  1.95474E+07 0.00015  2.34793E+07 0.00013  2.88537E+07 0.00013  1.48663E+07 0.00012  1.27946E+07 0.00014  2.74346E+07 0.00012  2.60588E+07 0.00011  3.11405E+07 0.00011  2.76464E+07 0.00011  2.84093E+07 9.9E-05  2.11072E+07 0.00014  1.53131E+07 0.00018  9.37299E+06 0.00024  6.34607E+06 0.00027  3.90397E+06 0.00044  2.28030E+06 0.00059  1.76706E+06 0.00075  3.34566E+05 0.00159  3.28161E+04 0.00334  3.20587E+03 0.01267  1.03914E+03 0.02583  8.73770E+01 0.05239  7.94519E+00 0.23411  3.12555E+00 0.37633  1.77703E-01 1.00000  5.05500E-01 0.64803  0.00000E+00 0.0E+00  2.83519E-02 1.00000  3.62842E-02 0.69698  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.89071E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84741E+00 9.9E-05 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  8.00300E+01 5.5E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  3.03756E-01 7.4E-06 ];
INF_CAPT                  (idx, [1:   2]) = [  2.32285E-03 6.9E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.60658E-03 5.0E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.28373E-03 4.5E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.58766E-02 4.4E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52662E+00 1.6E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99249E+02 1.5E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.78764E-09 9.1E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  2.95150E-01 7.9E-06 ];
INF_SCATT1                (idx, [1:   2]) = [  2.52868E-02 0.00014 ];
INF_SCATT2                (idx, [1:   2]) = [  8.55551E-03 0.00038 ];
INF_SCATT3                (idx, [1:   2]) = [  3.00353E-03 0.00055 ];
INF_SCATT4                (idx, [1:   2]) = [  1.65335E-03 0.00198 ];
INF_SCATT5                (idx, [1:   2]) = [  6.33922E-04 0.00323 ];
INF_SCATT6                (idx, [1:   2]) = [  2.89682E-04 0.00614 ];
INF_SCATT7                (idx, [1:   2]) = [  1.08257E-04 0.01126 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  2.95162E-01 7.9E-06 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.52868E-02 0.00014 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.55551E-03 0.00038 ];
INF_SCATTP3               (idx, [1:   2]) = [  3.00352E-03 0.00055 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.65335E-03 0.00198 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.33922E-04 0.00323 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.89675E-04 0.00614 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.08271E-04 0.01128 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.59235E-01 1.9E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.28583E+00 1.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.59424E-03 5.1E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.60634E-03 7.9E-05 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  2.95150E-01 7.9E-06 ];
INF_S1                    (idx, [1:   2]) = [  2.52868E-02 0.00014 ];
INF_S2                    (idx, [1:   2]) = [  8.55551E-03 0.00038 ];
INF_S3                    (idx, [1:   2]) = [  3.00353E-03 0.00055 ];
INF_S4                    (idx, [1:   2]) = [  1.65335E-03 0.00198 ];
INF_S5                    (idx, [1:   2]) = [  6.33922E-04 0.00323 ];
INF_S6                    (idx, [1:   2]) = [  2.89682E-04 0.00614 ];
INF_S7                    (idx, [1:   2]) = [  1.08257E-04 0.01126 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  2.95162E-01 7.9E-06 ];
INF_SP1                   (idx, [1:   2]) = [  2.52868E-02 0.00014 ];
INF_SP2                   (idx, [1:   2]) = [  8.55551E-03 0.00038 ];
INF_SP3                   (idx, [1:   2]) = [  3.00352E-03 0.00055 ];
INF_SP4                   (idx, [1:   2]) = [  1.65335E-03 0.00198 ];
INF_SP5                   (idx, [1:   2]) = [  6.33922E-04 0.00323 ];
INF_SP6                   (idx, [1:   2]) = [  2.89675E-04 0.00614 ];
INF_SP7                   (idx, [1:   2]) = [  1.08271E-04 0.01128 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.09258E-01 0.00018 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.14336E-01 0.00028 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.14283E-01 0.00018 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  3.99516E-01 0.00026 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.14483E-01 0.00018 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.04501E-01 0.00028 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.04604E-01 0.00018 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.34345E-01 0.00026 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.10679E-03 0.00256  2.43523E-04 0.00994  4.68654E-04 0.00663  4.08992E-04 0.00722  6.35958E-04 0.00568  9.69273E-04 0.00484  1.33619E-04 0.01264  2.04439E-04 0.01010  4.23354E-05 0.02212 ];
LAMBDA                    (idx, [1:  18]) = [  3.13938E-01 0.00434  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 03:49:39 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 04:13:19 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545472179 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.05542E+00  9.95687E-01  9.91156E-01  1.00002E+00  9.98291E-01  9.73216E-01  9.94879E-01  9.91338E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.5E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95659E+00 1.1E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.45734E+01 8.1E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.42602E+01 8.3E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.13198E-01 0.00017  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 100000429 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00001E+05 0.00015 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  2.00001E+05 0.00015 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  4.42784E+02 ;
RUNNING_TIME              (idx, 1)        =  1.20065E+02 ;
INIT_TIME                 (idx, [1:  2])  = [  3.14850E-01  6.20333E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.83336E-04  5.00003E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  1.19739E+02  2.36087E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.20065E+02  1.91348E+02 ];
CPU_USAGE                 (idx, 1)        = 3.68785 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.71546E+00 0.00011 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.02183E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5235.20;
XS_MEMSIZE                (idx, 1)        = 14.02;
MAT_MEMSIZE               (idx, 1)        = 1.33;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 21578 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99449E-06 8.5E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 5 8 ];
COEF_BRANCH             (idx, 1)        = 5 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38357E-01 0.00030 ];
TH232_FISS                (idx, [1:   4]) = [  4.94932E-03 0.00142  9.87162E-03 0.00141 ];
U233_FISS                 (idx, [1:   4]) = [  4.96417E-01 0.00016  9.90128E-01 1.4E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.29064E-01 0.00027  6.96206E-01 0.00015 ];
U233_CAPT                 (idx, [1:   4]) = [  4.49548E-02 0.00046  2.42497E-01 0.00039 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 100000429 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.85293E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 100000429 1.00099E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18538974 1.85587E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 50141533 5.01919E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 31319922 3.13479E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 100000429 1.00099E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -3.06964E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.60094E-11 7.1E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.26712E+00 7.0E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.01496E-01 7.1E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.85370E-01 8.7E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  6.86867E-01 7.4E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98899E-01 8.5E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  8.02048E+01 6.3E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  3.13133E-01 0.00016 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.42572E+01 6.4E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  6.86521E-01 7.7E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52668E+00 2.2E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99249E+02 2.1E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.26821E+00 0.00011  1.26429E+00 0.00011  3.92027E-03 0.00258 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.26837E+00 7.0E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.26852E+00 0.00012 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.26837E+00 7.0E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84744E+00 1.0E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.12562E+00 5.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.12528E+00 4.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.37241E-02 0.00033 ];
IMP_EALF                  (idx, [1:   2]) = [  4.37382E-02 0.00027 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.79349E-01 0.00035 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.79413E-01 0.00014 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.36510E-03 0.00185  1.82371E-04 0.00645  3.57214E-04 0.00457  3.11344E-04 0.00502  4.83561E-04 0.00407  7.40547E-04 0.00334  1.03552E-04 0.00842  1.53869E-04 0.00700  3.26409E-05 0.01573 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.14225E-01 0.00318  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.10987E-03 0.00264  2.42950E-04 0.00954  4.68176E-04 0.00678  4.14029E-04 0.00699  6.33419E-04 0.00592  9.69120E-04 0.00488  1.36309E-04 0.01212  2.02990E-04 0.01031  4.28772E-05 0.02341 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.14105E-01 0.00464  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.68152E-07 0.00030  2.67989E-07 0.00030  3.20900E-07 0.00444 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.40070E-07 0.00027  3.39863E-07 0.00027  4.06963E-07 0.00444 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.09159E-03 0.00258  2.41204E-04 0.00895  4.65088E-04 0.00685  4.12445E-04 0.00705  6.33023E-04 0.00543  9.63043E-04 0.00460  1.33622E-04 0.01229  2.01142E-04 0.01022  4.20187E-05 0.02172 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.12774E-01 0.00455  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.68447E-07 0.00071  2.68282E-07 0.00071  3.23693E-07 0.01133 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.40444E-07 0.00070  3.40235E-07 0.00070  4.10510E-07 0.01133 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.05130E-03 0.00813  2.30883E-04 0.02881  4.64616E-04 0.02132  3.88263E-04 0.02309  6.37040E-04 0.01793  9.54455E-04 0.01513  1.23228E-04 0.04042  2.12913E-04 0.03110  3.99075E-05 0.07074 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.18306E-01 0.01447  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.06084E-03 0.00785  2.32811E-04 0.02790  4.67437E-04 0.02039  3.90114E-04 0.02235  6.36399E-04 0.01728  9.55515E-04 0.01435  1.23919E-04 0.03941  2.13701E-04 0.02975  4.09434E-05 0.06714 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.18900E-01 0.01390  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.13730E+04 0.00808 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.68676E-07 0.00015 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.40734E-07 0.00012 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.09087E-03 0.00149 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.15042E+04 0.00150 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.78254E-09 0.00010 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.73058E+01 0.00370 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.42602E+01 8.3E-05  2.63203E+01 0.00011 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.24016E+06 0.00065  5.54760E+06 0.00031  1.30316E+07 0.00019  1.96159E+07 0.00014  2.35551E+07 0.00015  2.89449E+07 6.7E-05  1.49119E+07 0.00012  1.28357E+07 0.00015  2.75174E+07 0.00016  2.61297E+07 0.00011  3.12108E+07 0.00011  2.77036E+07 0.00014  2.84506E+07 0.00016  2.11275E+07 0.00020  1.53205E+07 0.00022  9.37753E+06 0.00027  6.34432E+06 0.00035  3.90296E+06 0.00042  2.27656E+06 0.00052  1.75956E+06 0.00073  3.33035E+05 0.00132  3.25625E+04 0.00357  3.22249E+03 0.01001  1.08570E+03 0.01634  9.42318E+01 0.03974  8.13988E+00 0.14351  3.04535E+00 0.33029  9.35995E-02 1.00000  8.00763E-01 1.00000  0.00000E+00 0.0E+00  3.14088E-02 1.00000  0.00000E+00 0.0E+00  7.48077E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84776E+00 0.00010 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  8.02050E+01 7.1E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  3.02441E-01 7.0E-06 ];
INF_CAPT                  (idx, [1:   2]) = [  2.31121E-03 6.2E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.56392E-03 4.7E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.25270E-03 4.4E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.57986E-02 4.3E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52668E+00 2.0E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99249E+02 1.9E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.78255E-09 9.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  2.93878E-01 8.0E-06 ];
INF_SCATT1                (idx, [1:   2]) = [  2.51904E-02 0.00016 ];
INF_SCATT2                (idx, [1:   2]) = [  8.52945E-03 0.00029 ];
INF_SCATT3                (idx, [1:   2]) = [  2.99560E-03 0.00063 ];
INF_SCATT4                (idx, [1:   2]) = [  1.64074E-03 0.00137 ];
INF_SCATT5                (idx, [1:   2]) = [  6.29542E-04 0.00321 ];
INF_SCATT6                (idx, [1:   2]) = [  2.88240E-04 0.00583 ];
INF_SCATT7                (idx, [1:   2]) = [  1.08860E-04 0.01597 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  2.93890E-01 8.0E-06 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.51905E-02 0.00016 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.52948E-03 0.00029 ];
INF_SCATTP3               (idx, [1:   2]) = [  2.99562E-03 0.00063 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.64075E-03 0.00137 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.29533E-04 0.00321 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.88252E-04 0.00584 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.08859E-04 0.01597 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.58084E-01 2.6E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.29157E+00 2.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.55165E-03 4.7E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.56242E-03 9.2E-05 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  2.93878E-01 8.0E-06 ];
INF_S1                    (idx, [1:   2]) = [  2.51904E-02 0.00016 ];
INF_S2                    (idx, [1:   2]) = [  8.52945E-03 0.00029 ];
INF_S3                    (idx, [1:   2]) = [  2.99560E-03 0.00063 ];
INF_S4                    (idx, [1:   2]) = [  1.64074E-03 0.00137 ];
INF_S5                    (idx, [1:   2]) = [  6.29542E-04 0.00321 ];
INF_S6                    (idx, [1:   2]) = [  2.88240E-04 0.00583 ];
INF_S7                    (idx, [1:   2]) = [  1.08860E-04 0.01597 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  2.93890E-01 8.0E-06 ];
INF_SP1                   (idx, [1:   2]) = [  2.51905E-02 0.00016 ];
INF_SP2                   (idx, [1:   2]) = [  8.52948E-03 0.00029 ];
INF_SP3                   (idx, [1:   2]) = [  2.99562E-03 0.00063 ];
INF_SP4                   (idx, [1:   2]) = [  1.64075E-03 0.00137 ];
INF_SP5                   (idx, [1:   2]) = [  6.29533E-04 0.00321 ];
INF_SP6                   (idx, [1:   2]) = [  2.88252E-04 0.00584 ];
INF_SP7                   (idx, [1:   2]) = [  1.08859E-04 0.01597 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.08818E-01 0.00016 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.13996E-01 0.00017 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.13905E-01 0.00024 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  3.98926E-01 0.00021 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.15360E-01 0.00016 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.05161E-01 0.00017 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.05340E-01 0.00024 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.35578E-01 0.00021 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.10987E-03 0.00264  2.42950E-04 0.00954  4.68176E-04 0.00678  4.14029E-04 0.00699  6.33419E-04 0.00592  9.69120E-04 0.00488  1.36309E-04 0.01212  2.02990E-04 0.01031  4.28772E-05 0.02341 ];
LAMBDA                    (idx, [1:  18]) = [  3.14105E-01 0.00464  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 04:13:19 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 04:36:54 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545473599 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.04250E+00  9.95625E-01  9.98800E-01  9.99392E-01  9.96658E-01  9.71056E-01  9.96160E-01  9.99807E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95625E+00 1.1E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.44477E+01 7.8E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.41298E+01 7.9E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.17893E-01 0.00015  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 99999991 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00000E+05 0.00015 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  2.00000E+05 0.00015 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.30008E+02 ;
RUNNING_TIME              (idx, 1)        =  1.43639E+02 ;
INIT_TIME                 (idx, [1:  2])  = [  3.76967E-01  6.21167E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.33332E-04  4.99964E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  1.43248E+02  2.35088E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.43639E+02  1.90981E+02 ];
CPU_USAGE                 (idx, 1)        = 3.68985 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.71531E+00 7.0E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.02153E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5235.20;
XS_MEMSIZE                (idx, 1)        = 14.02;
MAT_MEMSIZE               (idx, 1)        = 1.33;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 21578 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99540E-06 8.1E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 6 8 ];
COEF_BRANCH             (idx, 1)        = 6 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38178E-01 0.00031 ];
TH232_FISS                (idx, [1:   4]) = [  4.96398E-03 0.00143  9.96597E-03 0.00142 ];
U233_FISS                 (idx, [1:   4]) = [  4.93129E-01 0.00015  9.90034E-01 1.4E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.28107E-01 0.00027  6.95899E-01 0.00015 ];
U233_CAPT                 (idx, [1:   4]) = [  4.46308E-02 0.00047  2.42441E-01 0.00040 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 99999991 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.87084E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 99999991 1.00099E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18406195 1.84258E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 49804497 4.98551E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 31789299 3.18178E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 99999991 1.00099E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -5.42402E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.58999E-11 6.5E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.25855E+00 6.4E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.98067E-01 6.5E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.84048E-01 8.1E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  6.82115E-01 6.8E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99080E-01 8.1E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  8.06675E+01 6.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  3.17885E-01 0.00015 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.41313E+01 6.4E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  6.81822E-01 7.0E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 1.5E-08 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52687E+00 2.2E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99249E+02 2.1E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.25978E+00 0.00011  1.25589E+00 0.00011  3.89551E-03 0.00241 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.25979E+00 6.4E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.25971E+00 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.25979E+00 6.4E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84774E+00 1.1E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.11524E+00 5.0E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.11555E+00 4.6E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.41801E-02 0.00031 ];
IMP_EALF                  (idx, [1:   2]) = [  4.41662E-02 0.00028 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.81409E-01 0.00031 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.81304E-01 0.00014 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.38256E-03 0.00183  1.80971E-04 0.00672  3.59752E-04 0.00466  3.14155E-04 0.00473  4.87565E-04 0.00382  7.44572E-04 0.00316  1.05142E-04 0.00874  1.56679E-04 0.00739  3.37219E-05 0.01533 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.16649E-01 0.00309  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.12481E-03 0.00277  2.37181E-04 0.00994  4.67962E-04 0.00686  4.17970E-04 0.00698  6.37297E-04 0.00584  9.77257E-04 0.00487  1.38781E-04 0.01283  2.04720E-04 0.01057  4.36459E-05 0.02250 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.15799E-01 0.00450  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.71025E-07 0.00029  2.70857E-07 0.00029  3.25080E-07 0.00427 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.41429E-07 0.00027  3.41216E-07 0.00027  4.09529E-07 0.00427 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.09272E-03 0.00242  2.34599E-04 0.00984  4.62509E-04 0.00656  4.11162E-04 0.00671  6.37807E-04 0.00528  9.65159E-04 0.00443  1.34655E-04 0.01246  2.03359E-04 0.01046  4.34680E-05 0.02138 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.15979E-01 0.00459  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.71351E-07 0.00067  2.71189E-07 0.00068  3.22468E-07 0.01018 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.41840E-07 0.00066  3.41635E-07 0.00067  4.06219E-07 0.01017 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.11991E-03 0.00810  2.37370E-04 0.03277  4.58572E-04 0.02133  4.19253E-04 0.02185  6.36677E-04 0.01736  9.75190E-04 0.01494  1.36253E-04 0.03880  2.17194E-04 0.03121  3.94064E-05 0.07375 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.16626E-01 0.01388  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.11400E-03 0.00784  2.34952E-04 0.03210  4.57920E-04 0.02053  4.17418E-04 0.02080  6.38208E-04 0.01677  9.74027E-04 0.01447  1.37085E-04 0.03671  2.15089E-04 0.03000  3.93014E-05 0.07010 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.16328E-01 0.01349  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.15081E+04 0.00815 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.71479E-07 0.00017 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.42001E-07 0.00012 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.10574E-03 0.00135 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.14402E+04 0.00135 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.76853E-09 0.00011 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  6.85440E-09 1.00000  0.00000E+00 0.0E+00  6.85440E-09 1.00000 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.99121E-09 1.00000  0.00000E+00 0.0E+00  2.99121E-09 1.00000 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  1.00613E-08 1.00000  0.00000E+00 0.0E+00  4.11487E-06 1.00000 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.72291E+01 0.00364 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.41298E+01 7.9E-05  2.62164E+01 0.00010 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.25201E+06 0.00073  5.60347E+06 0.00030  1.31537E+07 0.00018  1.97964E+07 0.00014  2.37612E+07 0.00013  2.91777E+07 0.00011  1.50319E+07 0.00012  1.29332E+07 0.00013  2.77110E+07 0.00013  2.63060E+07 0.00013  3.13846E+07 0.00014  2.78335E+07 0.00013  2.85516E+07 0.00019  2.11745E+07 0.00019  1.53298E+07 0.00024  9.36823E+06 0.00029  6.33061E+06 0.00034  3.88938E+06 0.00049  2.26647E+06 0.00055  1.74717E+06 0.00085  3.29057E+05 0.00149  3.20465E+04 0.00433  3.11335E+03 0.01111  1.00167E+03 0.02136  8.62887E+01 0.06550  9.77710E+00 0.21088  5.06712E+00 0.32671  7.93645E-01 0.54030  4.89764E-01 0.71647  5.96940E-02 1.00000  4.00478E-02 1.00000  1.63532E-02 1.00000  3.61052E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  7.01695E-02 1.00000  0.00000E+00 0.0E+00  7.19207E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  5.13763E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84757E+00 0.00012 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  8.06677E+01 6.6E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  2.99144E-01 8.3E-06 ];
INF_CAPT                  (idx, [1:   2]) = [  2.28157E-03 8.0E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.45589E-03 6.1E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.17432E-03 5.5E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.56017E-02 5.3E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52687E+00 2.2E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99249E+02 1.8E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.76853E-09 0.00011 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  2.90688E-01 9.6E-06 ];
INF_SCATT1                (idx, [1:   2]) = [  2.49631E-02 0.00017 ];
INF_SCATT2                (idx, [1:   2]) = [  8.45768E-03 0.00029 ];
INF_SCATT3                (idx, [1:   2]) = [  2.97219E-03 0.00078 ];
INF_SCATT4                (idx, [1:   2]) = [  1.63137E-03 0.00157 ];
INF_SCATT5                (idx, [1:   2]) = [  6.24034E-04 0.00260 ];
INF_SCATT6                (idx, [1:   2]) = [  2.84544E-04 0.00569 ];
INF_SCATT7                (idx, [1:   2]) = [  1.09377E-04 0.01633 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  2.90700E-01 9.6E-06 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.49633E-02 0.00017 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.45770E-03 0.00029 ];
INF_SCATTP3               (idx, [1:   2]) = [  2.97220E-03 0.00078 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.63138E-03 0.00157 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.24028E-04 0.00260 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.84551E-04 0.00568 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.09381E-04 0.01633 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.55175E-01 2.7E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.30629E+00 2.7E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.44367E-03 6.0E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.45668E-03 8.6E-05 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  2.90688E-01 9.6E-06 ];
INF_S1                    (idx, [1:   2]) = [  2.49631E-02 0.00017 ];
INF_S2                    (idx, [1:   2]) = [  8.45768E-03 0.00029 ];
INF_S3                    (idx, [1:   2]) = [  2.97219E-03 0.00078 ];
INF_S4                    (idx, [1:   2]) = [  1.63137E-03 0.00157 ];
INF_S5                    (idx, [1:   2]) = [  6.24034E-04 0.00260 ];
INF_S6                    (idx, [1:   2]) = [  2.84544E-04 0.00569 ];
INF_S7                    (idx, [1:   2]) = [  1.09377E-04 0.01633 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  2.90700E-01 9.6E-06 ];
INF_SP1                   (idx, [1:   2]) = [  2.49633E-02 0.00017 ];
INF_SP2                   (idx, [1:   2]) = [  8.45770E-03 0.00029 ];
INF_SP3                   (idx, [1:   2]) = [  2.97220E-03 0.00078 ];
INF_SP4                   (idx, [1:   2]) = [  1.63138E-03 0.00157 ];
INF_SP5                   (idx, [1:   2]) = [  6.24028E-04 0.00260 ];
INF_SP6                   (idx, [1:   2]) = [  2.84551E-04 0.00568 ];
INF_SP7                   (idx, [1:   2]) = [  1.09381E-04 0.01633 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.08286E-01 0.00019 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.13508E-01 0.00026 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.13507E-01 0.00026 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  3.98230E-01 0.00026 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.16421E-01 0.00019 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.06112E-01 0.00026 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.06113E-01 0.00026 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.37039E-01 0.00026 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.12481E-03 0.00277  2.37181E-04 0.00994  4.67962E-04 0.00686  4.17970E-04 0.00698  6.37297E-04 0.00584  9.77257E-04 0.00487  1.38781E-04 0.01283  2.04720E-04 0.01057  4.36459E-05 0.02250 ];
LAMBDA                    (idx, [1:  18]) = [  3.15799E-01 0.00450  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 04:36:54 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 05:00:23 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545475014 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.05339E+00  1.00263E+00  9.95706E-01  1.00003E+00  9.93082E-01  9.64567E-01  9.94947E-01  9.95653E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95593E+00 1.0E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.43195E+01 8.8E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.39966E+01 9.0E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.22850E-01 0.00018  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 100001234 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00002E+05 0.00015 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  2.00002E+05 0.00015 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  6.16799E+02 ;
RUNNING_TIME              (idx, 1)        =  1.67123E+02 ;
INIT_TIME                 (idx, [1:  2])  = [  4.39450E-01  6.24833E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.83333E-04  5.00003E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  1.66666E+02  2.34181E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.67122E+02  1.90694E+02 ];
CPU_USAGE                 (idx, 1)        = 3.69069 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.71134E+00 6.4E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.01931E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5235.20;
XS_MEMSIZE                (idx, 1)        = 14.02;
MAT_MEMSIZE               (idx, 1)        = 1.33;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 21578 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99539E-06 8.4E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 7 8 ];
COEF_BRANCH             (idx, 1)        = 7 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.37957E-01 0.00031 ];
TH232_FISS                (idx, [1:   4]) = [  4.94978E-03 0.00145  1.00080E-02 0.00145 ];
U233_FISS                 (idx, [1:   4]) = [  4.89634E-01 0.00016  9.89992E-01 1.5E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.27068E-01 0.00028  6.95729E-01 0.00015 ];
U233_CAPT                 (idx, [1:   4]) = [  4.42582E-02 0.00049  2.42325E-01 0.00042 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 100001234 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.87351E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 100001234 1.00099E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18261488 1.82808E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 49454314 4.95039E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 32285432 3.23140E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 100001234 1.00099E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 6.79493E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.57856E-11 7.6E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.24960E+00 7.5E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.94488E-01 7.6E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.82670E-01 9.3E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  6.77159E-01 8.0E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99078E-01 8.4E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  8.11165E+01 6.9E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  3.22841E-01 0.00017 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.39981E+01 7.1E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  2.48771E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  1.48593E-08 1.00000 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  9.98184E+04 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  6.76860E-01 8.4E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  3.68985E-03 1.00000 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  2.49750E-03 1.00000 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52705E+00 2.1E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99248E+02 2.1E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.25099E+00 0.00011  1.24711E+00 0.00011  3.88247E-03 0.00253 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.25083E+00 7.5E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.25076E+00 0.00012 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.25083E+00 7.5E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84804E+00 1.1E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.10582E+00 5.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.10560E+00 4.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.45982E-02 0.00033 ];
IMP_EALF                  (idx, [1:   2]) = [  4.46075E-02 0.00027 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.83049E-01 0.00032 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.83247E-01 0.00014 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.40878E-03 0.00183  1.86260E-04 0.00666  3.64074E-04 0.00464  3.16864E-04 0.00483  4.91980E-04 0.00396  7.53453E-04 0.00319  1.05732E-04 0.00860  1.57430E-04 0.00677  3.29864E-05 0.01560 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.14307E-01 0.00312  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.13006E-03 0.00267  2.43751E-04 0.00928  4.71066E-04 0.00694  4.15290E-04 0.00704  6.37356E-04 0.00577  9.76974E-04 0.00468  1.39804E-04 0.01270  2.03308E-04 0.01029  4.25147E-05 0.02247 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.13522E-01 0.00462  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.73953E-07 0.00030  2.73789E-07 0.00030  3.26314E-07 0.00421 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.42709E-07 0.00027  3.42504E-07 0.00027  4.08207E-07 0.00421 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.10440E-03 0.00253  2.43497E-04 0.00890  4.65509E-04 0.00655  4.10977E-04 0.00668  6.35474E-04 0.00559  9.68738E-04 0.00440  1.35603E-04 0.01191  2.03165E-04 0.01010  4.14363E-05 0.02175 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.12942E-01 0.00429  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.74385E-07 0.00069  2.74232E-07 0.00070  3.23632E-07 0.01035 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.43248E-07 0.00068  3.43057E-07 0.00068  4.04866E-07 0.01035 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.09175E-03 0.00778  2.33146E-04 0.02881  4.50453E-04 0.02181  4.18212E-04 0.02194  6.33432E-04 0.01873  9.72562E-04 0.01383  1.34558E-04 0.03868  2.07402E-04 0.03121  4.19844E-05 0.06895 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.17353E-01 0.01448  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.09105E-03 0.00743  2.35074E-04 0.02823  4.47718E-04 0.02134  4.14878E-04 0.02099  6.35956E-04 0.01819  9.70442E-04 0.01347  1.35998E-04 0.03697  2.08586E-04 0.03016  4.24002E-05 0.06855 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.18607E-01 0.01419  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.12789E+04 0.00786 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.74590E-07 0.00017 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.43505E-07 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.11341E-03 0.00158 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.13386E+04 0.00158 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.75422E-09 0.00010 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.73570E+01 0.00370 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.39966E+01 9.0E-05  2.61220E+01 0.00011 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.26403E+06 0.00081  5.65255E+06 0.00033  1.32803E+07 0.00023  1.99839E+07 0.00013  2.39758E+07 0.00012  2.94241E+07 0.00013  1.51538E+07 0.00015  1.30350E+07 0.00014  2.79075E+07 0.00013  2.64733E+07 0.00013  3.15617E+07 0.00014  2.79590E+07 0.00012  2.86417E+07 0.00017  2.12153E+07 0.00018  1.53360E+07 0.00022  9.35915E+06 0.00021  6.31777E+06 0.00030  3.87528E+06 0.00046  2.25249E+06 0.00061  1.73647E+06 0.00077  3.25489E+05 0.00170  3.14011E+04 0.00404  3.06236E+03 0.00872  9.91197E+02 0.02082  9.10566E+01 0.04713  9.86590E+00 0.16348  3.48997E+00 0.35686  0.00000E+00 0.0E+00  9.40327E-02 1.00000  3.76161E-02 1.00000  3.74772E-02 1.00000  1.71399E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  6.44754E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84788E+00 0.00013 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  8.11167E+01 6.6E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  2.95847E-01 1.0E-05 ];
INF_CAPT                  (idx, [1:   2]) = [  2.25196E-03 7.1E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.34798E-03 5.1E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.09603E-03 4.6E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.54050E-02 4.5E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52705E+00 2.1E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99248E+02 2.0E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.75423E-09 9.7E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  2.87498E-01 1.2E-05 ];
INF_SCATT1                (idx, [1:   2]) = [  2.47331E-02 0.00017 ];
INF_SCATT2                (idx, [1:   2]) = [  8.39373E-03 0.00034 ];
INF_SCATT3                (idx, [1:   2]) = [  2.94980E-03 0.00079 ];
INF_SCATT4                (idx, [1:   2]) = [  1.62291E-03 0.00100 ];
INF_SCATT5                (idx, [1:   2]) = [  6.21502E-04 0.00313 ];
INF_SCATT6                (idx, [1:   2]) = [  2.85326E-04 0.00588 ];
INF_SCATT7                (idx, [1:   2]) = [  1.11610E-04 0.01391 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  2.87510E-01 1.2E-05 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.47331E-02 0.00017 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.39375E-03 0.00034 ];
INF_SCATTP3               (idx, [1:   2]) = [  2.94979E-03 0.00079 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.62293E-03 0.00100 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.21505E-04 0.00313 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.85336E-04 0.00588 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.11608E-04 0.01390 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.52264E-01 2.4E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.32137E+00 2.4E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.33582E-03 5.1E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.34874E-03 0.00011 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  2.87498E-01 1.2E-05 ];
INF_S1                    (idx, [1:   2]) = [  2.47331E-02 0.00017 ];
INF_S2                    (idx, [1:   2]) = [  8.39373E-03 0.00034 ];
INF_S3                    (idx, [1:   2]) = [  2.94980E-03 0.00079 ];
INF_S4                    (idx, [1:   2]) = [  1.62291E-03 0.00100 ];
INF_S5                    (idx, [1:   2]) = [  6.21502E-04 0.00313 ];
INF_S6                    (idx, [1:   2]) = [  2.85326E-04 0.00588 ];
INF_S7                    (idx, [1:   2]) = [  1.11610E-04 0.01391 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  2.87510E-01 1.2E-05 ];
INF_SP1                   (idx, [1:   2]) = [  2.47331E-02 0.00017 ];
INF_SP2                   (idx, [1:   2]) = [  8.39375E-03 0.00034 ];
INF_SP3                   (idx, [1:   2]) = [  2.94979E-03 0.00079 ];
INF_SP4                   (idx, [1:   2]) = [  1.62293E-03 0.00100 ];
INF_SP5                   (idx, [1:   2]) = [  6.21505E-04 0.00313 ];
INF_SP6                   (idx, [1:   2]) = [  2.85336E-04 0.00588 ];
INF_SP7                   (idx, [1:   2]) = [  1.11608E-04 0.01390 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.07657E-01 0.00014 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.12883E-01 0.00021 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.13006E-01 0.00025 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  3.97479E-01 0.00020 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.17681E-01 0.00014 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.07331E-01 0.00021 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.07091E-01 0.00025 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.38619E-01 0.00020 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.13006E-03 0.00267  2.43751E-04 0.00928  4.71066E-04 0.00694  4.15290E-04 0.00704  6.37356E-04 0.00577  9.76974E-04 0.00468  1.39804E-04 0.01270  2.03308E-04 0.01029  4.25147E-05 0.02247 ];
LAMBDA                    (idx, [1:  18]) = [  3.13522E-01 0.00462  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov 28 2018 16:29:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 20])  = 'MSFR simplified core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 18])  = './MSFR_fuelcore_1g' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/home/smpark/projects/msr-neutronics/MSFR/serpent' ;
HOSTNAME                  (idx, [1: 27])  = 'smpark-Precision-Tower-3420' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E3-1225 v5 @ 3.30GHz' ;
CPU_MHZ                   (idx, 1)        = 198.0 ;
START_DATE                (idx, [1: 24])  = 'Sat Dec 22 05:00:23 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sat Dec 22 05:23:43 2018' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1545476423 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.05579E+00  9.95932E-01  9.89811E-01  9.94444E-01  9.99304E-01  9.73278E-01  9.96252E-01  9.95188E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 56])  = '/home/smpark/projects/xsdata/jeff311/sss_jeff311u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 2.4E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.95555E+00 1.0E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.41935E+01 8.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.38657E+01 8.7E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.27810E-01 0.00016  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 100000547 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00001E+05 0.00016 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  2.00001E+05 0.00016 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  7.03029E+02 ;
RUNNING_TIME              (idx, 1)        =  1.90467E+02 ;
INIT_TIME                 (idx, [1:  2])  = [  5.01050E-01  6.16000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  3.16664E-04  3.33309E-05 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  1.89946E+02  2.32800E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.90467E+02  1.90467E+02 ];
CPU_USAGE                 (idx, 1)        = 3.69107 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.71019E+00 6.3E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.01723E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32061.03 ;
ALLOC_MEMSIZE             (idx, 1)        = 5345.50;
MEMSIZE                   (idx, 1)        = 5234.83;
XS_MEMSIZE                (idx, 1)        = 13.71;
MAT_MEMSIZE               (idx, 1)        = 1.27;
RES_MEMSIZE               (idx, 1)        = 1.05;
MISC_MEMSIZE              (idx, 1)        = 5218.80;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 110.67;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 20582 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 108 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  4.99496E-06 7.7E-05  0.00000E+00 0.0E+00 ];

% Coefficient calculation:

COEF_IDX                (idx, [1:  2])  = [ 8 8 ];
COEF_BRANCH             (idx, 1)        = 8 ;
COEF_BU_STEP            (idx, 1)        = 1 ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.37939E-01 0.00033 ];
TH232_FISS                (idx, [1:   4]) = [  4.92163E-03 0.00144  1.00249E-02 0.00143 ];
U233_FISS                 (idx, [1:   4]) = [  4.86022E-01 0.00015  9.89975E-01 1.5E-05 ];
TH232_CAPT                (idx, [1:   4]) = [  1.26108E-01 0.00029  6.95728E-01 0.00016 ];
U233_CAPT                 (idx, [1:   4]) = [  4.38738E-02 0.00045  2.42051E-01 0.00042 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 100000547 1.00000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 9.86601E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 100000547 1.00099E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 18124908 1.81443E+07 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 49094515 4.91439E+07 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 32781124 3.28105E+07 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 100000547 1.00099E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 8.07643E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.56719E-11 7.3E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.24069E+00 7.2E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.90928E-01 7.3E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.81298E-01 9.0E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  6.72226E-01 7.6E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98992E-01 7.7E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  8.15776E+01 6.3E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  3.27774E-01 0.00016 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.38651E+01 6.4E-05 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  2.48771E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  1.47625E-08 1.00000 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.00637E+05 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  6.71895E-01 7.7E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  3.69590E-03 1.00000 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  2.48450E-03 1.00000 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.52723E+00 2.3E-06 ];
FISSE                     (idx, [1:   2]) = [  1.99248E+02 2.2E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.24201E+00 0.00011  1.23816E+00 0.00011  3.84292E-03 0.00253 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.24191E+00 7.2E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.24194E+00 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.24191E+00 7.2E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.84835E+00 1.1E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.09599E+00 5.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  6.09573E+00 4.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  4.50388E-02 0.00033 ];
IMP_EALF                  (idx, [1:   2]) = [  4.50499E-02 0.00027 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.85062E-01 0.00034 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.85095E-01 0.00014 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  18]) = [  2.42003E-03 0.00195  1.88429E-04 0.00686  3.66932E-04 0.00475  3.18838E-04 0.00513  4.92533E-04 0.00417  7.55130E-04 0.00336  1.04915E-04 0.00865  1.59578E-04 0.00702  3.36711E-05 0.01516 ];
FWD_ANA_LAMBDA            (idx, [1:  18]) = [  3.15355E-01 0.00319  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  18]) = [  3.14219E-03 0.00274  2.46838E-04 0.00922  4.71623E-04 0.00680  4.21257E-04 0.00730  6.36014E-04 0.00620  9.81139E-04 0.00486  1.35245E-04 0.01228  2.07166E-04 0.01011  4.29030E-05 0.02181 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  18]) = [  3.14247E-01 0.00420  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.77069E-07 0.00029  2.76882E-07 0.00029  3.36959E-07 0.00453 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.44119E-07 0.00027  3.43887E-07 0.00027  4.18500E-07 0.00452 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  18]) = [  3.09438E-03 0.00253  2.45621E-04 0.00871  4.66281E-04 0.00644  4.09373E-04 0.00682  6.29214E-04 0.00583  9.62273E-04 0.00471  1.33817E-04 0.01197  2.06173E-04 0.00951  4.16285E-05 0.02199 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  18]) = [  3.14426E-01 0.00445  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.77009E-07 0.00072  2.76826E-07 0.00072  3.35516E-07 0.01167 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.44045E-07 0.00071  3.43817E-07 0.00071  4.16714E-07 0.01167 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  18]) = [  3.12656E-03 0.00803  2.50521E-04 0.02833  4.72608E-04 0.02063  4.17646E-04 0.02280  6.32302E-04 0.01929  9.67888E-04 0.01440  1.36058E-04 0.03916  2.05883E-04 0.03086  4.36541E-05 0.06957 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  18]) = [  3.14548E-01 0.01381  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.2E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  18]) = [  3.12310E-03 0.00783  2.49497E-04 0.02735  4.73956E-04 0.02014  4.20115E-04 0.02188  6.29425E-04 0.01887  9.65874E-04 0.01381  1.34766E-04 0.03754  2.05835E-04 0.02967  4.36324E-05 0.06822 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  18]) = [  3.14804E-01 0.01337  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.12970E+04 0.00807 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.77563E-07 0.00015 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.44733E-07 0.00012 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  3.11660E-03 0.00151 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.12285E+04 0.00152 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  3.74008E-09 0.00010 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.32122E-09 1.00000  0.00000E+00 0.0E+00  3.32122E-09 1.00000 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.45513E-08 1.00000  0.00000E+00 0.0E+00  2.45513E-08 1.00000 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  9.92383E-09 1.00000  0.00000E+00 0.0E+00  4.11566E-06 1.00000 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.73779E+01 0.00391 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.38657E+01 8.7E-05  2.60220E+01 0.00011 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '1' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 1 ;
MACRO_E                   (idx, [1:   2]) = [  1.00000E+37  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.27687E+06 0.00056  5.71038E+06 0.00031  1.33994E+07 0.00024  2.01594E+07 0.00012  2.41887E+07 0.00011  2.96709E+07 0.00014  1.52779E+07 0.00011  1.31388E+07 0.00017  2.81139E+07 0.00012  2.66587E+07 0.00016  3.17480E+07 0.00016  2.81012E+07 0.00014  2.87468E+07 0.00016  2.12599E+07 0.00024  1.53522E+07 0.00023  9.35260E+06 0.00036  6.30410E+06 0.00039  3.86098E+06 0.00051  2.24204E+06 0.00064  1.72173E+06 0.00070  3.20792E+05 0.00151  3.10380E+04 0.00429  2.99975E+03 0.00861  9.51142E+02 0.02653  8.23129E+01 0.06060  8.72041E+00 0.15135  4.76644E+00 0.28841  1.96652E-01 1.00000  1.03223E-01 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  1.47200E-01 1.00000  2.14165E-01 1.00000  6.80398E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.84842E+00 0.00013 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   2]) = [  8.15778E+01 7.7E-05 ];
INF_FISS_FLX              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   2]) = [  2.92544E-01 9.4E-06 ];
INF_CAPT                  (idx, [1:   2]) = [  2.22241E-03 8.8E-05 ];
INF_ABS                   (idx, [1:   2]) = [  8.24034E-03 6.3E-05 ];
INF_FISS                  (idx, [1:   2]) = [  6.01793E-03 5.4E-05 ];
INF_NSF                   (idx, [1:   2]) = [  1.52087E-02 5.3E-05 ];
INF_NUBAR                 (idx, [1:   2]) = [  2.52723E+00 2.3E-06 ];
INF_KAPPA                 (idx, [1:   2]) = [  1.99248E+02 2.3E-08 ];
INF_INVV                  (idx, [1:   2]) = [  3.74009E-09 0.00011 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   2]) = [  2.84304E-01 1.1E-05 ];
INF_SCATT1                (idx, [1:   2]) = [  2.44931E-02 0.00015 ];
INF_SCATT2                (idx, [1:   2]) = [  8.31892E-03 0.00035 ];
INF_SCATT3                (idx, [1:   2]) = [  2.92138E-03 0.00070 ];
INF_SCATT4                (idx, [1:   2]) = [  1.60728E-03 0.00120 ];
INF_SCATT5                (idx, [1:   2]) = [  6.17114E-04 0.00292 ];
INF_SCATT6                (idx, [1:   2]) = [  2.83331E-04 0.00604 ];
INF_SCATT7                (idx, [1:   2]) = [  1.06256E-04 0.01338 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   2]) = [  2.84316E-01 1.1E-05 ];
INF_SCATTP1               (idx, [1:   2]) = [  2.44932E-02 0.00015 ];
INF_SCATTP2               (idx, [1:   2]) = [  8.31893E-03 0.00035 ];
INF_SCATTP3               (idx, [1:   2]) = [  2.92140E-03 0.00070 ];
INF_SCATTP4               (idx, [1:   2]) = [  1.60727E-03 0.00120 ];
INF_SCATTP5               (idx, [1:   2]) = [  6.17112E-04 0.00291 ];
INF_SCATTP6               (idx, [1:   2]) = [  2.83341E-04 0.00604 ];
INF_SCATTP7               (idx, [1:   2]) = [  1.06263E-04 0.01337 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   2]) = [  2.49370E-01 3.0E-05 ];
INF_DIFFCOEF              (idx, [1:   2]) = [  1.33670E+00 3.0E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   2]) = [  8.22825E-03 6.3E-05 ];
INF_REMXS                 (idx, [1:   2]) = [  8.24003E-03 0.00010 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   2]) = [  2.84304E-01 1.1E-05 ];
INF_S1                    (idx, [1:   2]) = [  2.44931E-02 0.00015 ];
INF_S2                    (idx, [1:   2]) = [  8.31892E-03 0.00035 ];
INF_S3                    (idx, [1:   2]) = [  2.92138E-03 0.00070 ];
INF_S4                    (idx, [1:   2]) = [  1.60728E-03 0.00120 ];
INF_S5                    (idx, [1:   2]) = [  6.17114E-04 0.00292 ];
INF_S6                    (idx, [1:   2]) = [  2.83331E-04 0.00604 ];
INF_S7                    (idx, [1:   2]) = [  1.06256E-04 0.01338 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   2]) = [  2.84316E-01 1.1E-05 ];
INF_SP1                   (idx, [1:   2]) = [  2.44932E-02 0.00015 ];
INF_SP2                   (idx, [1:   2]) = [  8.31893E-03 0.00035 ];
INF_SP3                   (idx, [1:   2]) = [  2.92140E-03 0.00070 ];
INF_SP4                   (idx, [1:   2]) = [  1.60727E-03 0.00120 ];
INF_SP5                   (idx, [1:   2]) = [  6.17112E-04 0.00291 ];
INF_SP6                   (idx, [1:   2]) = [  2.83341E-04 0.00604 ];
INF_SP7                   (idx, [1:   2]) = [  1.06263E-04 0.01337 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   2]) = [  4.07017E-01 0.00019 ];
CMM_TRANSPXS_X            (idx, [1:   2]) = [  4.12470E-01 0.00025 ];
CMM_TRANSPXS_Y            (idx, [1:   2]) = [  4.12249E-01 0.00027 ];
CMM_TRANSPXS_Z            (idx, [1:   2]) = [  3.96737E-01 0.00023 ];
CMM_DIFFCOEF              (idx, [1:   2]) = [  8.18968E-01 0.00019 ];
CMM_DIFFCOEF_X            (idx, [1:   2]) = [  8.08141E-01 0.00025 ];
CMM_DIFFCOEF_Y            (idx, [1:   2]) = [  8.08573E-01 0.00027 ];
CMM_DIFFCOEF_Z            (idx, [1:   2]) = [  8.40189E-01 0.00023 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  18]) = [  3.14219E-03 0.00274  2.46838E-04 0.00922  4.71623E-04 0.00680  4.21257E-04 0.00730  6.36014E-04 0.00620  9.81139E-04 0.00486  1.35245E-04 0.01228  2.07166E-04 0.01011  4.29030E-05 0.02181 ];
LAMBDA                    (idx, [1:  18]) = [  3.14247E-01 0.00420  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 0.0E+00  2.92467E-01 0.0E+00  6.66488E-01 0.0E+00  1.63478E+00 6.3E-09  3.55460E+00 0.0E+00 ];

