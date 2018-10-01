#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/av'
    'frameworks/base'
    'system/core'
 )

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"
    echo "${RED}Applying ${NC}${repository} ${RED}patches...${NC}"
    git apply -v "${ROOT}/device/motorola/taido/patches/${repository}"/*
    cd "${ROOT}"
done

