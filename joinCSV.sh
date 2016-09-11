#!/bin/sh

copies=$(pwd)/copies/ && mkdir copies 2> /dev/null && cp -R 2_ToTrans/. copies

sed -i '' 's/[^,]*,//' $copies*
paste -d , $copies* > trad.csv
cat $copies*
#awk '{gsub(",ENGLISH ,", ",");print}' trad.csv > temp
#awk '{gsub(", ,","");print}' temp > trad.csv

rm -rf temp 2_ToTrans
