#!/bin/bash
_now=$(date +"%Y%m%d")
_file="$HOME/Documents/Hublab/lotd/lotd_$_now.md"
pwd
echo "Creating file $_file to save links of the day ... in "
echo "## LOTD_$_now" > $_file
echo "File was created"
