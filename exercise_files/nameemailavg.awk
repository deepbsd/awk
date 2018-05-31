#!/bin/bash

FILE=${1}

awk 'BEGIN{FS=","} {printf "%-20s %-35s %-5s\n", $1,$2,$3}' ${FILE}
