export OPENMM_CC=$(which icx)
export OPENMM_CXX=$(which icpx)
 
export INSPATH="${PWD}/install"
 
export LD_LIBRARY_PATH="$INSPATH/lib":"$INSPATH/lib/plugins":${LD_LIBRARY_PATH}
export CPATH="$INSPATH/include":${CPATH}
 
export OPENMM_INCLUDE_PATH="$INSPATH/include"
export OPENMM_LIB_PATH="$INSPATH/lib"
export OPENMM_PLUGIN_DIR="$INSPATH/lib/plugins"
 
cd python
 
CC=icx CXX=icpx python -m pip install .
 
cd $HOME
#DONT RUN THE FOLLOWING INSTALLATION TEST FROM 'python' DIRECTORY, HENCE WE CHANGE TO A DIFFERENT DIRECTORY SUCH AS '$HOME'
 
python -m openmm.testInstallation
#MAKE SURE 'OPENCL' IS ONE OF THE REPORTED PLATFORMS - CURRENTLY USED FOR PVC
