#!/bin/bash
echo "Executing the restore_environment.sh script"

# Install all dependencies in the system folder
Rscript -e "setwd('/home/onyxia/work/${MY_REPO}')" -e "getwd()"
Rscript -e "getwd()"
Rscript -e "print('renv.lock' %in% list.files())"
Rscript -e 'renv::restore()'
