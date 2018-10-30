## Moltres input files
1. msfr-temp-input.i  -  Moltres input file with cylindrical fuel salt region and surrounding Ni alloy structural layer. Accepts both 2d and 3d meshes. 6 neutron groups.
2. msfr-temp-input-2g.i  -  Same as (1) but for 2 groups.
3. msfr-temp-input-advec  -  Same as (1) but with adjective BC at the bottom.
4. msfr-temp-input-dir.i  -  Same as (1) but with different Dirichlet BCs.
5. msfr-temp-input-steady-v2  -  Same as (2) but with NonlinearEigen solver.
6. msfr_fuel_core_2d.e  -  2d mesh file for the above two input files.
7. msfr_fuel_core_3d.e  -  3d mesh file for the above two input files.
8. msfr.e  -  Moltres output exodus file (contains temperature, neutron flux, precursor results).
9. fuel-only directory  -  The same files as above but without the surrounding Ni alloy structural layer.
