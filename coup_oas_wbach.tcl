#  This Script is generated to test different vanGenuchten parameterizations for the Wuestebach site (TERENO)
#  Purpose is to test different configurations and to see what works best
#  Inge Wiekenkamp, Forschungszentrum Juelich Agroshpere, IBG-3 

# Setup: Use parameterization as documented by Koch et al, 2016, excluding N 
#
lappend auto_path $env(PARFLOW_DIR)/bin
package require parflow
namespace import Parflow::*

pfset FileVersion 4

pfset Process.Topology.P 3
pfset Process.Topology.Q 4
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

pfset ComputationalGrid.DX	          10.0
pfset ComputationalGrid.DY                10.0
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
pfset Geom.domain.Upper.Z                        0.325

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

#----------------------------------------------------------------
# Indicator Geometry Input
#----------------------------------------------------------------
pfset GeomInput.indi_input.InputType IndicatorField
pfset GeomInput.indi_input.GeomNames "F0 F111 F112 F113 F121 F122 F123 F199 F211 F212 F213 F221 F222 F223 F299 F311 F312 F313 F321 F322 F323 F399"
pfset Geom.indi_input.FileName "dist_indi_yr_13l.pfb"

pfset GeomInput.F0.Value 0
pfset GeomInput.F111.Value 111
pfset GeomInput.F112.Value 112
pfset GeomInput.F113.Value 113
pfset GeomInput.F121.Value 121
pfset GeomInput.F122.Value 122
pfset GeomInput.F123.Value 123
pfset GeomInput.F199.Value 199
pfset GeomInput.F211.Value 211
pfset GeomInput.F212.Value 212
pfset GeomInput.F213.Value 213
pfset GeomInput.F221.Value 221
pfset GeomInput.F222.Value 222
pfset GeomInput.F223.Value 223
pfset GeomInput.F299.Value 299
pfset GeomInput.F311.Value 311
pfset GeomInput.F312.Value 312
pfset GeomInput.F313.Value 313
pfset GeomInput.F321.Value 321
pfset GeomInput.F322.Value 322
pfset GeomInput.F323.Value 323
pfset GeomInput.F399.Value 399

#-----------------------------------------------------------------------------
# Perm
#-----------------------------------------------------------------------------

pfset Geom.Perm.Names                 "domain F0 F111 F112 F113 F121 F122 F123 F199 F211 F212 F213 F221 F222 F223 F299 F311 F312 F313 F321 F322 F323 F399" 

# Values in m/hour

pfset Geom.domain.Perm.Type          Constant
pfset Geom.domain.Perm.Value         0.401

pfset Geom.F0.Perm.Type              Constant
pfset Geom.F0.Perm.Value             0.083
pfset Geom.F111.Perm.Type            Constant
pfset Geom.F111.Perm.Value           0.335
pfset Geom.F112.Perm.Type            Constant
pfset Geom.F112.Perm.Value           0.335
pfset Geom.F113.Perm.Type            Constant
pfset Geom.F113.Perm.Value           0.335
pfset Geom.F121.Perm.Type            Constant
pfset Geom.F121.Perm.Value           0.335
pfset Geom.F122.Perm.Type            Constant
pfset Geom.F122.Perm.Value           0.335
pfset Geom.F123.Perm.Type            Constant
pfset Geom.F123.Perm.Value           0.335
pfset Geom.F199.Perm.Type            Constant
pfset Geom.F199.Perm.Value           0.335
pfset Geom.F211.Perm.Type            Constant
pfset Geom.F211.Perm.Value           0.623
pfset Geom.F212.Perm.Type            Constant
pfset Geom.F212.Perm.Value           0.623
pfset Geom.F213.Perm.Type            Constant
pfset Geom.F213.Perm.Value           0.623
pfset Geom.F221.Perm.Type            Constant
pfset Geom.F221.Perm.Value           0.623
pfset Geom.F222.Perm.Type            Constant
pfset Geom.F222.Perm.Value           0.623
pfset Geom.F223.Perm.Type            Constant
pfset Geom.F223.Perm.Value           0.623
pfset Geom.F299.Perm.Type            Constant
pfset Geom.F299.Perm.Value           0.623
pfset Geom.F311.Perm.Type            Constant
pfset Geom.F311.Perm.Value           0.041
pfset Geom.F312.Perm.Type            Constant
pfset Geom.F312.Perm.Value           0.041
pfset Geom.F313.Perm.Type            Constant
pfset Geom.F313.Perm.Value           0.041
pfset Geom.F321.Perm.Type            Constant
pfset Geom.F321.Perm.Value           0.041
pfset Geom.F322.Perm.Type            Constant
pfset Geom.F322.Perm.Value           0.041
pfset Geom.F323.Perm.Type            Constant
pfset Geom.F323.Perm.Value           0.041
pfset Geom.F399.Perm.Type            Constant
pfset Geom.F399.Perm.Value           0.041

#-----------------------------------------------------------------------------
# Perm Tensors
#-----------------------------------------------------------------------------

pfset Perm.TensorType               TensorByGeom

pfset Geom.Perm.TensorByGeom.Names  "domain F311 F312 F313 F321 F322 F323 F399"

pfset Geom.domain.Perm.TensorValX  1.0
pfset Geom.domain.Perm.TensorValY  1.0
pfset Geom.domain.Perm.TensorValZ  1.0

pfset Geom.F311.Perm.TensorValX  20.0
pfset Geom.F311.Perm.TensorValY  20.0
pfset Geom.F311.Perm.TensorValZ  1.0

pfset Geom.F312.Perm.TensorValX  20.0
pfset Geom.F312.Perm.TensorValY  20.0
pfset Geom.F312.Perm.TensorValZ  1.0

pfset Geom.F313.Perm.TensorValX  20.0
pfset Geom.F313.Perm.TensorValY  20.0
pfset Geom.F313.Perm.TensorValZ  1.0

pfset Geom.F321.Perm.TensorValX  20.0
pfset Geom.F321.Perm.TensorValY  20.0
pfset Geom.F321.Perm.TensorValZ  1.0

pfset Geom.F322.Perm.TensorValX  20.0
pfset Geom.F322.Perm.TensorValY  20.0
pfset Geom.F322.Perm.TensorValZ  1.0

pfset Geom.F323.Perm.TensorValX  20.0
pfset Geom.F323.Perm.TensorValY  20.0
pfset Geom.F323.Perm.TensorValZ  1.0

pfset Geom.F399.Perm.TensorValX  20.0
pfset Geom.F399.Perm.TensorValY  20.0
pfset Geom.F399.Perm.TensorValZ  1.0

#-----------------------------------------------------------------------------
# Specific Storage
#-----------------------------------------------------------------------------

pfset SpecificStorage.Type            Constant
pfset SpecificStorage.GeomNames       "domain"
pfset Geom.domain.SpecificStorage.Value 1.0e-4

#-----------------------------------------------------------------------------
# Phases
#-----------------------------------------------------------------------------

pfset Phase.Names "water"

pfset Phase.water.Density.Type	        Constant
pfset Phase.water.Density.Value	        1.0

pfset Phase.water.Viscosity.Type	Constant
pfset Phase.water.Viscosity.Value	1.0

#-----------------------------------------------------------------------------
# Contaminants
#-----------------------------------------------------------------------------

pfset Contaminants.Names			""

#-----------------------------------------------------------------------------
# Retardation
#-----------------------------------------------------------------------------

pfset Geom.Retardation.GeomNames           ""

#-----------------------------------------------------------------------------
# Gravity
#-----------------------------------------------------------------------------

pfset Gravity				1.0

#-----------------------------------------------------------------------------
# Setup timing info
#-----------------------------------------------------------------------------
 
pfset TimingInfo.BaseUnit        __base_pfl__
pfset TimingInfo.StartCount      __start_cnt_pfl__
pfset TimingInfo.StartTime       0.0
pfset TimingInfo.StopTime        __stop_pfl_bldsva__
pfset TimingInfo.DumpInterval    __dump_pfl_interval__
pfset TimeStep.Type              Constant
pfset TimeStep.Value             __dt_pfl_bldsva__
 
#-----------------------------------------------------------------------------
# Porosity
#-----------------------------------------------------------------------------

pfset Geom.Porosity.GeomNames           "domain F0 F111 F112 F113 F121 F122 F123 F199 F211 F212 F213 F221 F222 F223 F299 F311 F312 F313 F321 F322 F323 F399"

pfset Geom.domain.Porosity.Type          Constant
pfset Geom.domain.Porosity.Value         0.5

pfset Geom.F0.Porosity.Type            Constant
pfset Geom.F0.Porosity.Value           0.87
pfset Geom.F111.Porosity.Type            Constant
pfset Geom.F111.Porosity.Value           0.52
pfset Geom.F112.Porosity.Type            Constant
pfset Geom.F112.Porosity.Value           0.59
pfset Geom.F113.Porosity.Type            Constant
pfset Geom.F113.Porosity.Value           0.65
pfset Geom.F121.Porosity.Type            Constant
pfset Geom.F121.Porosity.Value           0.57
pfset Geom.F122.Porosity.Type            Constant
pfset Geom.F122.Porosity.Value           0.66
pfset Geom.F123.Porosity.Type            Constant
pfset Geom.F123.Porosity.Value           0.72
pfset Geom.F199.Porosity.Type            Constant
pfset Geom.F199.Porosity.Value           0.57
pfset Geom.F211.Porosity.Type            Constant
pfset Geom.F211.Porosity.Value           0.44
pfset Geom.F212.Porosity.Type            Constant
pfset Geom.F212.Porosity.Value           0.49
pfset Geom.F213.Porosity.Type            Constant
pfset Geom.F213.Porosity.Value           0.55
pfset Geom.F221.Porosity.Type            Constant
pfset Geom.F221.Porosity.Value           0.54
pfset Geom.F222.Porosity.Type            Constant
pfset Geom.F222.Porosity.Value           0.57
pfset Geom.F223.Porosity.Type            Constant
pfset Geom.F223.Porosity.Value           0.64
pfset Geom.F299.Porosity.Type            Constant
pfset Geom.F299.Porosity.Value           0.49
pfset Geom.F311.Porosity.Type            Constant
pfset Geom.F311.Porosity.Value           0.36
pfset Geom.F312.Porosity.Type            Constant
pfset Geom.F312.Porosity.Value           0.41
pfset Geom.F313.Porosity.Type            Constant
pfset Geom.F313.Porosity.Value           0.52
pfset Geom.F321.Porosity.Type            Constant
pfset Geom.F321.Porosity.Value           0.42
pfset Geom.F322.Porosity.Type            Constant
pfset Geom.F322.Porosity.Value           0.54
pfset Geom.F323.Porosity.Type            Constant
pfset Geom.F323.Porosity.Value           0.61
pfset Geom.F399.Porosity.Type            Constant
pfset Geom.F399.Porosity.Value           0.43

#-----------------------------------------------------------------------------
# Relative Permeability
#-----------------------------------------------------------------------------

pfset Phase.RelPerm.Type               VanGenuchten
pfset Phase.RelPerm.GeomNames          "domain F0 F111 F112 F113 F121 F122 F123 F199 F211 F212 F213 F221 F222 F223 F299 F311 F312 F313 F321 F322 F323 F399"

pfset Geom.domain.RelPerm.Alpha         1.0
pfset Geom.domain.RelPerm.N             2.0

pfset Geom.F0.RelPerm.Alpha       2.64
pfset Geom.F0.RelPerm.N           2.0
pfset Geom.F111.RelPerm.Alpha       1.0
pfset Geom.F111.RelPerm.N           2.0
pfset Geom.F112.RelPerm.Alpha       1.0
pfset Geom.F112.RelPerm.N           2.0
pfset Geom.F113.RelPerm.Alpha       1.0
pfset Geom.F113.RelPerm.N           2.0
pfset Geom.F121.RelPerm.Alpha       1.0
pfset Geom.F121.RelPerm.N           2.0
pfset Geom.F122.RelPerm.Alpha       1.0
pfset Geom.F122.RelPerm.N           2.0
pfset Geom.F123.RelPerm.Alpha       1.0
pfset Geom.F123.RelPerm.N           2.0
pfset Geom.F199.RelPerm.Alpha       1.0
pfset Geom.F199.RelPerm.N           2.0
pfset Geom.F211.RelPerm.Alpha       1.0
pfset Geom.F211.RelPerm.N           2.0
pfset Geom.F212.RelPerm.Alpha       1.0
pfset Geom.F212.RelPerm.N           2.0
pfset Geom.F213.RelPerm.Alpha       1.0
pfset Geom.F213.RelPerm.N           2.0
pfset Geom.F221.RelPerm.Alpha       1.0
pfset Geom.F221.RelPerm.N           2.0
pfset Geom.F222.RelPerm.Alpha       1.0
pfset Geom.F222.RelPerm.N           2.0
pfset Geom.F223.RelPerm.Alpha       1.0
pfset Geom.F223.RelPerm.N           2.0
pfset Geom.F299.RelPerm.Alpha       1.0
pfset Geom.F299.RelPerm.N           2.0
pfset Geom.F311.RelPerm.Alpha       1.0
pfset Geom.F311.RelPerm.N           2.0
pfset Geom.F312.RelPerm.Alpha       1.0
pfset Geom.F312.RelPerm.N           2.0
pfset Geom.F313.RelPerm.Alpha       1.0
pfset Geom.F313.RelPerm.N           2.0
pfset Geom.F321.RelPerm.Alpha       1.0
pfset Geom.F321.RelPerm.N           2.0
pfset Geom.F322.RelPerm.Alpha       1.0
pfset Geom.F322.RelPerm.N           2.0
pfset Geom.F323.RelPerm.Alpha       1.0
pfset Geom.F323.RelPerm.N           2.0
pfset Geom.F399.RelPerm.Alpha       1.0
pfset Geom.F399.RelPerm.N           2.0

#---------------------------------------------------------
# Saturation
#---------------------------------------------------------

pfset Phase.Saturation.Type              VanGenuchten
pfset Phase.Saturation.GeomNames         "domain F0 F111 F112 F113 F121 F122 F123 F199 F211 F212 F213 F221 F222 F223 F299 F311 F312 F313 F321 F322 F323 F399"

pfset Geom.domain.Saturation.Alpha        1.0
pfset Geom.domain.Saturation.N            2.0
pfset Geom.domain.Saturation.SRes         0.0
pfset Geom.domain.Saturation.SSat         1.0

pfset Geom.F0.Saturation.Alpha        2.64
pfset Geom.F0.Saturation.N            2.0
pfset Geom.F0.Saturation.SRes         0.0
pfset Geom.F0.Saturation.SSat         1.0
pfset Geom.F111.Saturation.Alpha        1.0
pfset Geom.F111.Saturation.N            2.0
pfset Geom.F111.Saturation.SRes         0.12
pfset Geom.F111.Saturation.SSat         1.0
pfset Geom.F112.Saturation.Alpha        1.0
pfset Geom.F112.Saturation.N            2.0
pfset Geom.F112.Saturation.SRes         0.12
pfset Geom.F112.Saturation.SSat         1.0
pfset Geom.F113.Saturation.Alpha        1.0
pfset Geom.F113.Saturation.N            2.0
pfset Geom.F113.Saturation.SRes         0.12
pfset Geom.F113.Saturation.SSat         1.0
pfset Geom.F121.Saturation.Alpha        1.0
pfset Geom.F121.Saturation.N            2.0
pfset Geom.F121.Saturation.SRes         0.12
pfset Geom.F121.Saturation.SSat         1.0
pfset Geom.F122.Saturation.Alpha        1.0
pfset Geom.F122.Saturation.N            2.0
pfset Geom.F122.Saturation.SRes         0.12
pfset Geom.F122.Saturation.SSat         1.0
pfset Geom.F123.Saturation.Alpha        1.0
pfset Geom.F123.Saturation.N            2.0
pfset Geom.F123.Saturation.SRes         0.12
pfset Geom.F123.Saturation.SSat         1.0
pfset Geom.F199.Saturation.Alpha        1.0
pfset Geom.F199.Saturation.N            2.0
pfset Geom.F199.Saturation.SRes         0.12
pfset Geom.F199.Saturation.SSat         1.0
pfset Geom.F211.Saturation.Alpha        1.0
pfset Geom.F211.Saturation.N            2.0
pfset Geom.F211.Saturation.SRes         0.15
pfset Geom.F211.Saturation.SSat         1.0
pfset Geom.F212.Saturation.Alpha        1.0
pfset Geom.F212.Saturation.N            2.0
pfset Geom.F212.Saturation.SRes         0.15
pfset Geom.F212.Saturation.SSat         1.0
pfset Geom.F213.Saturation.Alpha        1.0
pfset Geom.F213.Saturation.N            2.0
pfset Geom.F213.Saturation.SRes         0.15
pfset Geom.F213.Saturation.SSat         1.0
pfset Geom.F221.Saturation.Alpha        1.0
pfset Geom.F221.Saturation.N            2.0
pfset Geom.F221.Saturation.SRes         0.15
pfset Geom.F221.Saturation.SSat         1.0
pfset Geom.F222.Saturation.Alpha        1.0
pfset Geom.F222.Saturation.N            2.0
pfset Geom.F222.Saturation.SRes         0.15
pfset Geom.F222.Saturation.SSat         1.0
pfset Geom.F223.Saturation.Alpha        1.0
pfset Geom.F223.Saturation.N            2.0
pfset Geom.F223.Saturation.SRes         0.15
pfset Geom.F223.Saturation.SSat         1.0
pfset Geom.F299.Saturation.Alpha        1.0
pfset Geom.F299.Saturation.N            2.0
pfset Geom.F299.Saturation.SRes         0.15
pfset Geom.F299.Saturation.SSat         1.0
pfset Geom.F311.Saturation.Alpha        1.0
pfset Geom.F311.Saturation.N            2.0
pfset Geom.F311.Saturation.SRes         0.12
pfset Geom.F311.Saturation.SSat         1.0
pfset Geom.F312.Saturation.Alpha        1.0
pfset Geom.F312.Saturation.N            2.0
pfset Geom.F312.Saturation.SRes         0.12
pfset Geom.F312.Saturation.SSat         1.0
pfset Geom.F313.Saturation.Alpha        1.0
pfset Geom.F313.Saturation.N            2.0
pfset Geom.F313.Saturation.SRes         0.12
pfset Geom.F313.Saturation.SSat         1.0
pfset Geom.F321.Saturation.Alpha        1.0
pfset Geom.F321.Saturation.N            2.0
pfset Geom.F321.Saturation.SRes         0.12
pfset Geom.F321.Saturation.SSat         1.0
pfset Geom.F322.Saturation.Alpha        1.0
pfset Geom.F322.Saturation.N            2.0
pfset Geom.F322.Saturation.SRes         0.12
pfset Geom.F322.Saturation.SSat         1.0
pfset Geom.F323.Saturation.Alpha        1.0
pfset Geom.F323.Saturation.N            2.0
pfset Geom.F323.Saturation.SRes         0.12
pfset Geom.F323.Saturation.SSat         1.0
pfset Geom.F399.Saturation.Alpha        1.0
pfset Geom.F399.Saturation.N            2.0
pfset Geom.F399.Saturation.SRes         0.12
pfset Geom.F399.Saturation.SSat         1.0

#-----------------------------------------------------------------------------
# Wells
#-----------------------------------------------------------------------------
pfset Wells.Names                           ""

#-----------------------------------------------------------------------------
# Time Cycles
#-----------------------------------------------------------------------------
pfset Cycle.Names constant
pfset Cycle.constant.Names              "alltime"
pfset Cycle.constant.alltime.Length      1
pfset Cycle.constant.Repeat             -1
 
#-----------------------------------------------------------------------------
# Boundary Conditions: Pressure
#-----------------------------------------------------------------------------

pfset BCPressure.PatchNames		              "x-lower x-upper y-lower y-upper z-lower z-upper"	
pfset Patch.x-lower.BCPressure.Type		      DirEquilRefPatch
pfset Patch.x-lower.BCPressure.Cycle		      "constant"
pfset Patch.x-lower.BCPressure.RefGeom                domain
pfset Patch.x-lower.BCPressure.RefPatch               z-upper
pfset Patch.x-lower.BCPressure.alltime.Value	      -0.88

pfset Patch.x-upper.BCPressure.Type		      DirEquilRefPatch
pfset Patch.x-upper.BCPressure.Cycle		      "constant"
pfset Patch.x-upper.BCPressure.RefGeom                domain
pfset Patch.x-upper.BCPressure.RefPatch               z-upper
pfset Patch.x-upper.BCPressure.alltime.Value	      -0.88

pfset Patch.y-lower.BCPressure.Type		      DirEquilRefPatch
pfset Patch.y-lower.BCPressure.Cycle		      "constant"
pfset Patch.y-lower.BCPressure.RefGeom                domain
pfset Patch.y-lower.BCPressure.RefPatch               z-upper
pfset Patch.y-lower.BCPressure.alltime.Value	      -0.88

pfset Patch.y-upper.BCPressure.Type		      DirEquilRefPatch
pfset Patch.y-upper.BCPressure.Cycle		      "constant"
pfset Patch.y-upper.BCPressure.RefGeom                domain
pfset Patch.y-upper.BCPressure.RefPatch               z-upper
pfset Patch.y-upper.BCPressure.alltime.Value	      -0.88

pfset Patch.z-lower.BCPressure.Type		      FluxConst
pfset Patch.z-lower.BCPressure.Cycle		      "constant"
pfset Patch.z-lower.BCPressure.alltime.Value	      0.0

pfset Patch.z-upper.BCPressure.Type		      OverlandFlow
pfset Patch.z-upper.BCPressure.Cycle		      "constant"
pfset Patch.z-upper.BCPressure.alltime.Value	      0.0

#---------------------------------------------------------
# Topo slopes in x-direction
#---------------------------------------------------------

pfset TopoSlopesX.Type "PFBFile"
pfset TopoSlopesX.GeomNames "domain"
pfset TopoSlopesX.FileName "./x_slope.pfb"

#pfset TopoSlopesX.Type "Constant"
#pfset TopoSlopesX.Geom.domain.Value 0.001
#---------------------------------------------------------
# Topo slopes in y-direction
#---------------------------------------------------------

pfset TopoSlopesY.Type "PFBFile"
pfset TopoSlopesY.GeomNames "domain"
pfset TopoSlopesY.FileName "./y_slope.pfb"

#pfset TopoSlopesY.Type "Constant"
#pfset TopoSlopesY.Geom.domain.Value 0.001
#---------------------------------------------------------
# Mannings coefficient 
#---------------------------------------------------------

pfset Mannings.Type "Constant"
pfset Mannings.GeomNames "domain"
pfset Mannings.Geom.domain.Value 0.0001

#-----------------------------------------------------------------------------
# Phase sources:
#-----------------------------------------------------------------------------

pfset PhaseSources.water.Type                         Constant
pfset PhaseSources.water.GeomNames                    domain
pfset PhaseSources.water.Geom.domain.Value        0.0

#-----------------------------------------------------------------------------
# Exact solution specification for error calculations
#-----------------------------------------------------------------------------

pfset KnownSolution                                    NoKnownSolution

#-----------------------------------------------------------------------------
# Set solver parameters
#-----------------------------------------------------------------------------

pfset Solver                                             Richards
pfset Solver.MaxIter                                     40000
#pfset OverlandFlowDiffusive                              0
pfset Solver.TerrainFollowingGrid                        True
#pfset Solver.Nonlinear.VariableDz                        True
pfset Solver.Nonlinear.MaxIter                           500 
pfset Solver.Nonlinear.ResidualTol                       1e-6
pfset Solver.Nonlinear.EtaChoice                         EtaConstant
pfset Solver.Nonlinear.EtaValue                          0.01
pfset Solver.Nonlinear.UseJacobian                       False
pfset Solver.Nonlinear.DerivativeEpsilon                 1e-16
pfset Solver.Nonlinear.StepTol                           1e-20
pfset Solver.Nonlinear.Globalization                     LineSearch
pfset Solver.Linear.KrylovDimension                      55
pfset Solver.Linear.MaxRestart                           8
pfset Solver.MaxConvergenceFailures                      5

#pfset Solver.Linear.Preconditioner                       PFMG
#pfset Solver.Linear.Preconditioner.PCMatrixType     FullJacobian
pfset Solver.Linear.Preconditioner                       MGSemi
pfset Solver.Linear.Preconditioner.MGSemi.MaxIter        1
pfset Solver.Linear.Preconditioner.MGSemi.MaxLevels      10
pfset Solver.Drop                                       1E-20
pfset Solver.AbsTol                                     1E-9
 
pfset Solver.PrintSaturation                            True
pfset Solver.PrintSubsurf                               True
pfset Solver.PrintPressure                              True
pfset Solver.PrintMask                                  True
#pfset Solver.PrintEvapTransSum				True	
#pfset Solver.PrintEvaporationTotal			True		
#pfset Solver.PrintCLM					True
#pfset Solver.PrintCLMEvaporationTotal			True
#pfset Solver PrintTranspiration				True			

#pfset Solver.WriteSiloSaturation                        False
#pfset Solver.WriteSiloPressure                          False
#pfset Solver.WriteSiloSubsurfData                       False
#pfset Solver.WriteSiloMask                              False
#pfset Solver.WriteSiloSlopes                            False
#pfset Solver.WriteCLMBinary                             True

#pfset Solver.WriteSiloEvapTransSum                      False
#pfset Solver.WriteSiloEvapTransSum                      False
#pfset Solver.LSM                                        CLM
#pfset Solver.CLM.MetForcing                              1D
#pfset Solver.CLM.MetFileName                            metfile1013m.dat
#pfset Solver.CLM.MetFilePath                             ./
#pfset Solver.PrintLSMSink                               False
#pfset Solver.CLM.CLMDumpInterval                        24.0
#pfset Solver.CLM.CLMFileDir                             "output/"
#pfset Solver.CLM.BinaryOutDir                           "output/"
#pfset Solver.CLM.BinaryOutDir                           True
#pfset Solver.CLM.IstepStart                             17475
#pfset Solver.CLM.SingleFile				False				
#pfset Solver.WriteSiloEvapTransSum                      False
#pfset Solver.CLM.EvapBeta                                Linear
#pfset Solver.CLM.VegWaterStress                          Pressure
#pfset Solver.CLM.ResSat                                  0.1
#pfset Solver.CLM.WiltingPoint                            0.12
#pfset Solver.CLM.FieldCapacity                           0.98
#pfset Solver.CLM.IrrigationType                          none
#pfset Solver.CLM.CLMFileDir                             "output/"
#pfset Solver.PrintEvapTrans                       False

#---------------------------------------------------------
# Initial conditions: water pressure
#---------------------------------------------------------


#---------------------------------------------------------
# Initial conditions: water pressure
#---------------------------------------------------------

pfset ICPressure.Type                    __pfl_ICPpressureType__
pfset ICPressure.GeomNames               domain
pfset Geom.domain.ICPressure.Value       __pfl_ICPpressureValue__
pfset Geom.domain.ICPressure.FileName    "__pfl_ICPpressureFileName__"
pfset Geom.domain.ICPressure.RefGeom     domain
pfset Geom.domain.ICPressure.RefPatch    z-upper

#-----------------------------------------------------------------------------
# Run and Unload the ParFlow output files
#-----------------------------------------------------------------------------

set num_processors [expr [pfget Process.Topology.P] * [pfget Process.Topology.Q] * [pfget Process.Topology.R]]
#for {set i 0} { $i <= $num_processors } {incr i} {
# file delete drv_clmin.dat.$i
# file delete drv_vegm.dat.$i
#file copy drv_clmin.dat drv_clmin.dat.$i
#file copy drv_vegm.dat drv_vegm.dat.$i
#}


pfwritedb wbach
