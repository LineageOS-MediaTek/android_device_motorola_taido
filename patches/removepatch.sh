#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/av'
    'frameworks/base'
    'system/core'
 )

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git reset --hard && git clean -f -d

    cd "${ROOT}"
done

