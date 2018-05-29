#!/usr/bin/env bash

FILE='nameemailavg.csv'

# Columns are right-aligned
#awk -F, '{printf("%20s\t%35s\t%10d\n", $1,$2,$3)}' ${FILE}

# replace the tabs with spaces
# also, make them left-justified with a - (negative) width value
#awk -F, '{printf("%-20s %-35s %-10d\n", $1,$2,$3)}' ${FILE}

# change the last column to a floating point value
#awk -F, '{printf("%-20s %-35s %-10f\n", $1,$2,$3)}' ${FILE}

# change the precision of the last column to 6-char width overall with 
# two decimal points (These are bowling averages!!!)
# change last column back to right-aligned
awk -F, '{printf("%-20s %-35s %6.2f\n", $1,$2,$3)}' ${FILE}
