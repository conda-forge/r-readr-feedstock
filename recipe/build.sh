#!/bin/bash

# inject makevars via user config
mkdir -p ~/.R && echo "CXXFLAGS = -D_LIBCPP_DISABLE_AVAILABILITY" >> ~/.R/Makevars

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
