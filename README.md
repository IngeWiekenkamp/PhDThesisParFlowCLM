# PhDThesisParFlowCLM
This repository contains all ParFlow and CLM 3.5 input files required to run the ParFlow-CLM-model (TerrSysMP platform) as described in chapter 7 of my PhD thesis. 
Note that the ParFlow-CLM model (TerrSysMP platform) itself can be downloaded via https://www.terrsysmp.org/

Below, a small description of the files in the repository is given:

atm_forcing - a folder with all atmoshperic forcing for CLM 
LICENSE - user license - mind that this repository is mainly made to reproduce the results in my Ph.D. thesis (if you wish to use the files for other purposes, please contact me via Email - ingewiekenkamp@gmail.com)
README.md - the current file with information on the files that are stored in this repository
convert_indi_13l.tcl	- a ParFlow .tcl script to distribute the indicator file (on a parallel computer)
dist_indi_yr_13l.sa - ParFlow indicator file (13 layers) for the Wüstebach model (to set the distributed Mualem van Genuchten parameterization)
fracdata_Wue.nc - CLM file with fracdata for the Wüstebach catchment (10 m resolution)
griddata_Wue.nc - CLM file with griddate for the Wüstebach catchment (10 m resolution)
inputdata.7z - 7zipped CLM folder with more general CLM input (mainly plant functional type information) 
surface_Wue.7z - CLM file with surface data for the first simulation period (2010 - Aug 2013)
surface_Wue_p2.7z - CLM file with surface data for the second simulation period (Aug 2013 - Sept 2014)
surface_Wue_p3.7z - CLM file with surface data for the third simulation period (Sept 2014 - Sept 2015)
topo_Wue.nc - CLM topo file (topography) for the Wüstebach catchment
x_slope.pfb - ParFlow slope file (x-dir) for the Wüstebach catchment
y_slope.pfb - ParFlow slope file (y-dir) for the Wüstebach catchment
