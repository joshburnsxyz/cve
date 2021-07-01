#!/bin/sh

csvurl="https://cve.mitre.org/data/downloads/allitems.csv"
localcsv="./cve_data.csv"

# Download file if its not present
if test -f "$localcsv"; then
  # Do nothing
else  
  wget -O "$localcsv" "$csvurl"
fi

# Run awk on localcsv
$(which awk) -f ./cve.awk "$localcsv"
