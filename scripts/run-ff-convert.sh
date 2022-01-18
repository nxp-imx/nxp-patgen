#/bin/sh
DIR=$1
CONTAINER_FMT=bmp

echo "-----------------------------------------------------------"
for file in $DIR/*.rgb ; do
     [ -f "$file" ] || continue
     echo "-----------------------------------------------------------"
     echo converting $file to $CONTAINER_FMT
     ../scripts/ff-convert.sh $file $CONTAINER_FMT &
done
wait 

echo "-----------------------------------------------------------"
for file in $DIR/*.yuv ; do
     [ -f "$file" ] || continue
     echo "-----------------------------------------------------------"
     echo converting $file to $CONTAINER_FMT
     ../scripts/ff-convert.sh $file $CONTAINER_FMT &
done
echo "-----------------------------------------------------------"
wait
