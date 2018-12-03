SCALE Job started on Wed 14/11/2018 00:26:43
With Host name smpark-Precision-Tower-3420
working directory /tmp/scale.smpark.4881
and process id 4881.
Input file named /home/smpark/projects/msr-neutronics/MSFR/scale/msfr-input.i
and output file named /home/smpark/projects/msr-neutronics/MSFR/scale/msfr-input.out
##########################################################
***Created 2 infinite homogeneous cells from unreferenced mixtures.
***Warning:  For hexagonal geometries with UCMFD, xcmfd and ycmfd were modifed to produce coarse meshes of multiples of 4 (xcmfd=1, ycmfd=1).
>>> Loading SCALE Standard Composition Library from /home/smpark/projects/SCALE-6.2.2/data/scale.rev39.sclib
>>> Loading CE library /home/smpark/projects/SCALE-6.2.2/data/ce_v7.1_endf.xml
 ===================================================================================================================================
   Outer iteration sweep begins 11/ 14/ 2018 at 00:26:50

  Outer   Eigenvalue Eigenvalue Max Flux   Max Flux     Max Fuel   Max Fuel     Wall   Elapsed   Iteration  CPU   Inners
 Iter. #              Delta      Delta   Location(r,g)   Delta   Location(r,g) Clock   CPU Time   CPU Time Usage Converged
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
     1    0.76247   4.228E-01 6.009E+00 (    3,  2)   1.000E+00 (   11,  0) 00:26:50    0.1 s     0.1 s   7.0%    F
     2    0.78523   2.898E-02 4.247E+00 (    3,  1)   8.598E-01 (   18,  0) 00:26:50    0.1 s     0.1 s   7.0%    F
     3    0.80171   2.056E-02 3.431E+00 (    3,  1)   8.466E-02 (   24,  0) 00:26:50    0.2 s     0.1 s   6.0%    F
     4    0.81352   1.452E-02 3.050E+00 (    3,  1)   4.788E-02 (   28,  0) 00:26:50    0.3 s     0.1 s   7.0%    F
     5    0.82237   1.076E-02 2.902E+00 (    3,  1)   3.182E-02 (   25,  0) 00:26:50    0.3 s     0.1 s   7.0%    F
     6    0.82917   8.197E-03 2.882E+00 (    2,  1)   2.211E-02 (   28,  0) 00:26:50    0.4 s     0.1 s   6.0%    F
     7    0.83449   6.378E-03 2.880E+00 (    2,  1)   1.598E-02 (   25,  0) 00:26:50    0.5 s     0.1 s   7.0%    F
     8    0.83871   5.032E-03 2.878E+00 (    2,  1)   1.185E-02 (   21,  0) 00:26:50    0.5 s     0.1 s   6.0%    F
     9    0.84209   4.010E-03 2.876E+00 (    2,  1)   8.969E-03 (   24,  0) 00:26:50    0.6 s     0.1 s   7.0%    F
    10    0.84481   3.223E-03 2.875E+00 (    2,  1)   6.889E-03 (   25,  0) 00:26:50    0.7 s     0.1 s   7.0%    F
    11    0.84702   2.604E-03 2.874E+00 (    2,  1)   5.362E-03 (   28,  0) 00:26:50    0.7 s     0.1 s   6.0%    F
    12    0.84881   2.115E-03 2.873E+00 (    2,  1)   4.242E-03 (   14,  0) 00:26:50    0.8 s     0.1 s   7.0%    F
    13    0.85028   1.730E-03 2.872E+00 (    2,  1)   3.476E-03 (   17,  0) 00:26:50    0.9 s     0.1 s   7.0%    F
    14    0.85148   1.408E-03 2.871E+00 (    2,  1)   2.859E-03 (   20,  0) 00:26:50    0.9 s     0.1 s   7.0%    F
    15    0.85246   1.154E-03 2.871E+00 (    2,  1)   2.356E-03 (   17,  0) 00:26:51    1.0 s     0.1 s   6.0%    F
    16    0.85327   9.470E-04 2.870E+00 (    2,  1)   1.947E-03 (   11,  0) 00:26:51    1.1 s     0.1 s   7.0%    F
    17    0.85394   7.778E-04 2.870E+00 (    2,  1)   1.611E-03 (   20,  0) 00:26:51    1.1 s     0.1 s   7.0%    F
    18    0.85449   6.419E-04 2.869E+00 (    2,  1)   1.335E-03 (   17,  0) 00:26:51    1.2 s     0.1 s   7.0%    F
    19    0.85493   5.256E-04 2.869E+00 (    2,  1)   1.107E-03 (   14,  0) 00:26:51    1.3 s     0.1 s   7.0%    F
    20    0.85530   4.318E-04 2.868E+00 (    2,  1)   9.172E-04 (   20,  0) 00:26:51    1.4 s     0.1 s   7.0%    F
    21    0.85561   3.549E-04 2.868E+00 (    2,  1)   7.602E-04 (   17,  0) 00:26:51    1.4 s     0.1 s   7.0%    F
 k-eff =       0.85560791     


  Time per Iteration (sec):
 Transport Sweeping:     0.047
 Inscatter Source  :     0.007
 Coarse-Mesh Accel :     0.057
 Else (Convergence):     0.009
 Total (per outer):      0.120

  Total iteration time breakdown (sec):
 Transport Sweeping:     0.994
 Inscatter Source  :     0.139
 Coarse-Mesh Accel :     1.202
 Else (Convergence):     0.181
 Total Time        :     2.516

 Critical Spectra Calculated with the B1 Method
 Input buckling of  0.00000E+00 gives a corresponding k-eff of  1.09683E+00
 Equivalent core height is infinite.
