#!/bin/sh
# Sort the rickrolls and remove duplicates
set -e

if [ ! -f known_rickrolls ]; then
  echo "Please run from root of repository."
  exit 1
fi

sort -u --ignore-case -o known_rickrolls known_rickrolls
