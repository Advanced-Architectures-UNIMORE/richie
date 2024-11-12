#!/usr/bin/env bash

# Copyright (c) 2020 ETH Zurich, University of Bologna
# SPDX-License-Identifier: Apache-2.0
#
# Verify that environment variables are defined appropriately within HERO.
#
# Author: Andreas Kurth

should_be_empty_or_undefined CC
should_be_empty_or_undefined CFLAGS
should_be_empty_or_undefined CPLUS_INCLUDE_PATH
should_be_empty_or_undefined CXX
should_be_empty_or_undefined CXXFLAGS
should_be_empty_or_undefined C_INCLUDE_PATH
should_be_empty_or_undefined LDFLAGS
should_be_empty_or_undefined LDLIBS
should_be_empty_or_undefined LD_LIBRARY_PATH
should_be_empty_or_undefined LIBRARY_PATH
