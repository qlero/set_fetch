#!/bin/bash/

#
# Script to setup R and R studio
#

sudo pacman -Syyu --needed base-devel git wget yajl gcc-fortran
yay -S rstudio-desktop-bin

#####
## INSTALLING THE R KERNEL IN JUPYTER NOTEBOOK
#####

#  install.packages(c("repr", "IRdisplay", "evaluate", "crayon", "pbdZMQ",  "devtools", "uuid", "digest"))
#  install.packages("IRkernel")

#Open a notebook and open new R script.
#Make Kernel available to Jupyter
#  IRkernel::installspec()
#  OR IRkernel::installspec(user = FALSE) #install system-wide
