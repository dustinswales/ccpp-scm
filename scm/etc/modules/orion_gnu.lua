help([[
This module loads libraries for building the CCPP Single-Column Model on
the NOAA RDHPC machine orion using GNU 10.2.0
]])

whatis([===[Loads libraries needed for building the CCPP SCM on Orion with GNU compilers ]===])

prepend_path("MODULEPATH", "/work/noaa/epic/role-epic/spack-stack/orion/modulefiles")

prepend_path("MODULEPATH", "/work/noaa/epic/role-epic/spack-stack/orion/spack-stack-1.6.0/envs/unified-env-rocky9/install/modulefiles/Core")

load("stack-gcc/10.2.0")
load("stack-openmpi/4.0.4")
load("stack-python/3.10.13")
load("py-f90nml")
load("py-netcdf4/1.5.8")
load("cmake/3.23.1")

load("netcdf-c/4.9.2")
load("netcdf-fortran/4.6.1")
load("bacio/2.4.1")
load("sp/2.5.0")
load("w3emc/2.10.0")

setenv("CMAKE_C_COMPILER","mpicc")
setenv("CMAKE_CXX_COMPILER","mpicxx")
setenv("CMAKE_Fortran_COMPILER","mpif90")
setenv("CMAKE_Platform","orion.gnu")
