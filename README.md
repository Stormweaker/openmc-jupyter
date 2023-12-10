# openmc-jupyter

Some modifications of the official Dockerfile from https://github.com/openmc-dev/openmc.
Installs Jupyter Lab and downloads the cross sections outside of the image.

Config : 
Jupyter lab is exposed on port 8888 inside the container
Volumes to mount : 
  - /datasets : folder where Jupyter lab starts, contains the scripts and notebooks to launch openMC with Jupyter
  - /nuclear_data : folder where the cross sections are downloaded
  - /config : config folder for Jupyter
