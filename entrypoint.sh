#!/bin/sh -l

wildcard=$1
type=$2
exit_code_found=$3
exit_code_not_found=$4
base_path=$5

found=$(find "$base_path" -name "$wildcard" -type "$type")
echo "Files found: $found"
echo "::set-output name=found::$found"

if [ "$found" != "" ]
then
    exit "$exit_code_found"
else
    exit "$exit_code_not_found"
fi
