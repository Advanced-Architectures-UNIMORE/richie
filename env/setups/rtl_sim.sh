#!/bin/bash
# Copyright (C) 2024 University of Modena and Reggio Emilia.
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.

THIS_SCRIPT_NAME=$(basename "$(readlink -f "${BASH_SOURCE[0]}")")
THIS_SCRIPT_NAME="${THIS_SCRIPT_NAME%.*}"

echo "Richie setup:"
echo " - Platform: $RICHIE_PLATFORM"
echo " - Setup: $THIS_SCRIPT_NAME"

export VSIM=vsim
export VSIM_PATH=$HERO_HOME_DIR/vsim
export SLM_CONV_GITHUB=1

source $HERO_HOME_DIR/env/esim.sh

if [ $UNIMORE -eq 1 ]; then
    echo "UNIMORE setup"
    module load siemens/questasim-2023.4
elif [ $IIS -eq 1 ]; then
    echo "Customize this script according to the IIS setup"
elif [ $UNIMORE -eq 0 -a $IIS -eq 0 ]; then
    echo "Customize this script according to your personal setup"
fi
