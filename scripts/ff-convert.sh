#!/bin/sh
outformat=$2
outextension=$2

outfilebase=`echo $1 | awk -F'-' '{print $1 "-" $2}'`
resolution=`echo $1 | awk -F'-' '{print $3}'`
informat=`echo $1 | awk -F'-' '{print $4}' | awk -F. '{print $1}' | awk -F_ '{print $1}'`
informat_str=`echo $1 | awk -F'-' '{print $4}' | awk -F. '{print $1}'`

debug=`echo $1 | awk -F'-' '{print " 1- " $1 " 2- " $2  " 3- " $3 " 4- "  $4}'`
echo "debug = $debug"

outfile=${outfilebase}-${resolution}-${informat_str}-${outformat}.${outextension}

echo converting ${1} from ${informat} to ${outformat}
#echo resolution is ${resolution}
#echo "informat: ${informat}"
#echo "outfile: ${outfile}"

ffmpeg -pix_fmt ${informat} -video_size ${resolution} -i ${1}  ${outfile}

