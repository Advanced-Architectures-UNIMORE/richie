#!/usr/bin/env bash

# Copyright (c) 2020 ETH Zurich, University of Bologna
# SPDX-License-Identifier: Apache-2.0
#
# Verify that environment variables are defined appropriately within HERO.
#
# Author: Andreas Kurth

# Takes a variable *value* as argument and evaluates whether it is empty or undefined.  If so, the
# status code is 0.
is_empty_or_undefined() {
  test -z ${1+x}
}

# Takes a variable *value* as argument and evaluates whether it is nonempty.  If so, the status code
# is 0.
is_nonempty() {
  ! is_empty_or_undefined $1
}

# Takes a variable *name* as argument and evaluates whether it is nonempty.  If it is not, prints an
# error message and exits with 1.
must_be_nonempty() {
  if ! is_nonempty ${!1}; then
    echo "Error: '$1' environment variable is undefined!"
    if ! is_nonempty ${!2}; then
      echo "$2"
    fi
    # exit 1
  fi
}

# Takes a variable *name* as argument and evaluates whether it is empty or undefined.  If it is not,
# prints an error message that contains a hint on how to override the check and exists with 1.
should_be_empty_or_undefined() {
  if ! is_empty_or_undefined ${!1}; then
    echo "Error: '$1' environment variable is set.  Unset it or, if you know what you do, disable this check."
    if ! is_nonempty ${!2}; then
      echo "$2"
    fi
    exit 1
  fi
}
