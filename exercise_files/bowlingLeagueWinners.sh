#!/usr/bin/env bash

FILE="./nameemailavg.csv"


awk -F, '{printf("%10.2f\t%-35s %-25s\n", $3,$1,$2)}' < ${FILE} | sort -nr
