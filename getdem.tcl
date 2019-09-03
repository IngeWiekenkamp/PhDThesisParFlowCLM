#set ::env(PARFLOW_DIR) /home/i.wiekenkamp/TerrSysSetup/terrsysmp/parflow
lappend auto_path $env(PARFLOW_DIR)/bin
package require parflow
namespace import Parflow::*

pfset FileVersion 4

pfset Process.Topology.P __nprocx_pfl__
pfset Process.Topology.Q __nprocy_pfl__
pfset Process.Topology.R 1

#---------------------------------------------------------
# Computational Grid
#---------------------------------------------------------
#pfset ComputationalGrid.Lower.X           0.0
#pfset ComputationalGrid.Lower.Y           0.0
#pfset ComputationalGrid.Lower.Z           0.0

#pfset ComputationalGrid.NX                118
#pfset ComputationalGrid.NY                74
#pfset ComputationalGrid.NZ                1

#pfset ComputationalGrid.DX	          10
#pfset ComputationalGrid.DY            10
#pfset ComputationalGrid.DZ	          0.025

#Read in DEM
set dem [pfload -sa demwue.txt]
pfsetgrid {118 74 1} {0.0 0.0 0.0} {10 10 0.025} $dem
# Fill flat areas (if any)
set flatfill [pffillflats $dem]
# Fill pits (if any)
set pitfill [pfpitfilldem $flatfill 0.01 10000]
# Calculate Slopes
set slope_x [pfslopex $pitfill]
set slope_y [pfslopey $pitfill]
# Write to output...
pfsave $flatfill -pfb klam.flatfill.pfb
pfsave $pitfill -pfb klam.pitfill.pfb
pfsave $slope_x -pfb x_slope.pfb
pfsave $slope_y -pfb y_slope.pfb
pfsave $slope_x -sa x_slope.sa
pfsave $slope_y -sa y_slope.sa
