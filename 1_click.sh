#!/bin/bash
#
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#

#
# 1-Click Deployment Launcher

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

pushd "${SCRIPT_DIR}" 1> /dev/null
echo -n "Please wait..."
git submodule update --init --recursive &> /dev/null || true
echo -e -n "\r                \r"
src/utils/interactive/interactive.sh "${1}" "${2}"
popd 1> /dev/null

# 1-Click Deployment Launcher

