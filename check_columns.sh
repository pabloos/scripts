#!/bin/bash

for fichero in $(pwd | ls)
do
    printf "%s:\t%d\n" $fichero $(head -1 $fichero | sed 's/[^,]//g' | wc -c)
done
