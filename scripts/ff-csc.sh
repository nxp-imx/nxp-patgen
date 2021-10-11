#!/bin/sh
outformat=$2
outextension=$3

outfilebase=`echo $1 | awk -F'-' '{print $1 "-" $2}'`
resolution=`echo $1 | awk -F'-' '{print $3}'`
informat=`echo $1 | awk -F'-' '{print $4}' | awk -F'.' '{print $1}' | awk -F'_' '{print $1}'`

format_list=`echo $1 | awk -F'-' '{print $4}' | awk -F'.' '{print $1}'`



echo "informat: $informat"

debug=`echo $1 | awk -F'-' '{print " 1- " $1 " 2- " $2  " 3- " $3 " 4- "  $4}'`
echo "debug = $debug"

outfile=${outfilebase}-${resolution}-${outformat}_${format_list}.$outextension

echo "outfile: ${outfile}"

echo converting $1 from $informat to $outformat
echo resolution is $resolution

ffmpeg -loglevel debug -pix_fmt ${informat} -video_size ${resolution} -i $1   -pix_fmt ${2} ${outfile}

