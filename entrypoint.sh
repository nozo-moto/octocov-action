#!/bin/bash -l

set -ex
args=()

if [ -n "$INPUT_CONFIG" ]; then
    args+=(--config "$INPUT_CONFIG")
fi

if [ -n "$INPUT_REPORT" ]; then
    args+=(--report "$INPUT_REPORT")
fi

octocov "${args[@]}"
