#!/usr/bin/env bash

# this awk script (actually a bash script) captures the lastname (uppercased) firstname, and
# email address from a file (addresses.txt) and outputs LASTNAME Firstname | @domain.com | for
# the last 30 lines of the file.

FILE='./addresses.txt'

cat "${FILE}" | awk '{ind=index($(NF-1), "@"); printf("%-15s %-15s |%-15s|\n"), toupper($2), $1, substr($(NF-1), ind, length($(NF-1)))}' | sort | tail -n30
