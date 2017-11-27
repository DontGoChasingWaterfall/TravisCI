#!/bin/bash

script_output="$(bash bash_agile.sh)"
regex="^$(whoami): [0-9]{4}-[0-9]{2}-[0-9]{2}\$"
if [[ $script_output =~ $regex ]]; then
    echo "Test Passed: Program gave expected output."
    exit 0
else
    echo "Test Failed: Program failed to match expected output." >&2
    echo "Input text: $script_output" >&2
    echo "Regex: $regex" >&2
    exit 1
fi
