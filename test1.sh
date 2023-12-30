#!/bin/bash
find /home/ubuntu/dir/ -type f -iname ramesh* > num
while read line
do
sed -i 's/and/grand/g' $line
done < num
