#/bin/sh

DIR=$1
CONTAINER_FMT=bmp

echo "-----------------------------------------------------------"
for file in $DIR/*.txt ; do
     [ -f "$file" ] || continue
     echo "-----------------------------------------------------------"
     echo results for $file
     echo 
     cat $file
     echo
done
wait 
