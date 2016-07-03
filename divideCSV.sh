#!/bin/sh

currentCSV="$(pwd)/$1"
nColumns=$(head -1 $currentCSV | sed 's/[^,]//g' | wc -c)

contents="2_ToTrans"
mkdir $(pwd)/$contents 2> /dev/null && cd $contents

for (( i=4; i<=$nColumns; i++ ))
do
  outCSV=$(head -1 $currentCSV | tr ' ' '_' | awk 'BEGIN {FS = ","} {print $('$i')}' | sed s/$'\r'$//)
  awk 'BEGIN {FS = ","} {print $3, ",", $('$i')}' "$currentCSV" > $outCSV.csv
done
