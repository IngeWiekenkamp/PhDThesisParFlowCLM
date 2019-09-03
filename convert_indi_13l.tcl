#  Distribute the Indicator File for the Wuestebach Model (TERENO)
#  Inge Wiekenkamp, Forschungszentrum Juelich, Agroshpere, IBG-3
 
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
pfset ComputationalGrid.Lower.X           0.0
pfset ComputationalGrid.Lower.Y           0.0
pfset ComputationalGrid.Lower.Z           0.0

pfset ComputationalGrid.NX                118
pfset ComputationalGrid.NY                74
pfset ComputationalGrid.NZ                13

pfset ComputationalGrid.DX	          10
pfset ComputationalGrid.DY                10
pfset ComputationalGrid.DZ	          0.025

#-----------------------------------------------------------------------------
# Domain
#-----------------------------------------------------------------------------

pfset Domain.GeomName domain

#---------------------------------------------------------
# The Names of the GeomInputs
#---------------------------------------------------------

pfset GeomInput.Names                 "boxinput indi_input"

pfset GeomInput.boxinput.InputType            Box
pfset GeomInput.boxinput.GeomName             domain

pfset Geom.domain.Lower.X                        0.0
pfset Geom.domain.Lower.Y                        0.0
pfset Geom.domain.Lower.Z                        0.0

pfset Geom.domain.Upper.X                        1180
pfset Geom.domain.Upper.Y                        740
pfset Geom.domain.Upper.Z                        1.65

pfset Solver.Nonlinear.VariableDz                True
pfset dzScale.GeomNames                          domain
pfset dzScale.Type                                 nzList
pfset dzScale.nzListNumber                          13
pfset Cell.12.dzScale.Value  1.0
pfset Cell.11.dzScale.Value  1.0
pfset Cell.10.dzScale.Value  2.0
pfset Cell.9.dzScale.Value  2.0
pfset Cell.8.dzScale.Value  4.0
pfset Cell.7.dzScale.Value  4.0
pfset Cell.6.dzScale.Value  4.0
pfset Cell.5.dzScale.Value  8.0
pfset Cell.4.dzScale.Value  8.0
pfset Cell.3.dzScale.Value  8.0
pfset Cell.2.dzScale.Value  8.0
pfset Cell.1.dzScale.Value  8.0
pfset Cell.0.dzScale.Value  8.0

pfset Geom.domain.Patches "x-lower x-upper y-lower y-upper z-lower z-upper"

# -----------------------------------------------------------------------
# Distribute Indicator File
# -----------------------------------------------------------------------

set ind [pfload dist_indi_yr_13l.sa]
pfsave $ind -pfb dist_indi_yr_13l.pfb
pfdist dist_indi_yr_13l.pfb


