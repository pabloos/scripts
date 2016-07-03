#!/bin/sh

for file in 2_ToTrans
do
  awk 'BEGIN {FS = ","} {print $2 ","}' $file | tr '_' ' ' > trans.csv
  cat trans.csv
done
