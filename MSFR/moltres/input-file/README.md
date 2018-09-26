## Moltres input files
1. msfr-temp-input.i  -  Moltres input file with cylindrical fuel salt region and surrounding Ni alloy structural layer. Accepts both 2d and 3d meshes.
2. msfr-temp-input-dir.i  -  Same as above but with modified Dirichlet BCs.
3. msfr_fuel_core_2d.e  -  2d mesh file for the above two input files.
4. msfr_fuel_core_3d.e  -  3d mesh file for the above two input files.
5. msfr.e  -  Output exodus file (contains temperature, neutron flux, precursor results).
6. fuel-only directory  -  The same files as above but without the surrounding Ni alloy structural layer.