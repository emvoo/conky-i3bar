#!/bin/sh

for i in $(acpi | grep "Battery" | awk '{ gsub(",","",$4); gsub("%","",$4); print $4}')
do
    if [ "$i" != "" ]
    then
        echo "$i"
        break
    fi
done
