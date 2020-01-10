#!/bin/sh

acpi | grep "Battery 0" | awk '{ gsub(",","",$4); gsub("%","",$4); print $4}'
