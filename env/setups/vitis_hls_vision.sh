#!/bin/bash
# Copyright (C) 2024 University of Modena and Reggio Emilia.
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.

THIS_SCRIPT_NAME=$(basename "$(readlink -f "${BASH_SOURCE[0]}")")
THIS_SCRIPT_NAME="${THIS_SCRIPT_NAME%.*}"

echo "Richie setup:"
echo " - Platform: $RICHIE_PLATFORM"
echo " - Setup: $THIS_SCRIPT_NAME"

# User defined variables
export vitis_install_path= # ...
export opencv_install_path= # ...

# Environment check
must_be_nonempty vitis_install_path "Define <vitis_install_path>"
must_be_nonempty opencv_install_path "Define <opencv_install_path>"

# Source environment
source $RICHIE_HW/accelerators/env/vitis_hls_vision_library.sh