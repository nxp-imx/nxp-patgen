#!/bin/sh

#outformat=$2
#outextension=$3

outfilebase1=`echo $1 | awk -F'-' '{print $1 "-" $2}'`
resolution1=`echo $1 | awk -F'-' '{print $3}'`
informat1=`echo $1 | awk -F'-' '{print $4}' | awk -F'.' '{print $1}' | awk -F'_' '{print $1}'`

format_list1=`echo $1 | awk -F'-' '{print $4}' | awk -F'.' '{print $1}'`

outfilebase2=`echo $2 | awk -F'-' '{print $1 "-" $2}'`
resolution2=`echo $2 | awk -F'-' '{print $3}'`
informat2=`echo $2 | awk -F'-' '{print $4}' | awk -F'.' '{print $1}' | awk -F'_' '{print $1}'`

format_list2=`echo $2 | awk -F'-' '{print $4}' | awk -F'.' '{print $1}'`

echo "informat1: $informat1"
echo "informat2: $informat2"

debug=`echo $1 | awk -F'-' '{print " 1- " $1 " 2- " $2  " 3- " $3 " 4- "  $4}'`
echo "debug = $debug"

#outfile=${outfilebase}-${resolution}-${outformat}_${format_list}.$outextension
#echo "outfile: ${outfile}"

#logbase=`echo $outfilebase1 | awk -F'/' '{print $(NF)}'`
#
#dir=`echo $outfilebase1 | awk -F'/' '{for (i = 1; i < $NF; i++) print $i"/" }'`

echo measuring PSNR  between ${1}  and ${2} 
echo resolution is ${resolution1}
echo outfilebase1 is ${outfilebase1}
echo outfilebase2 is ${outfilebase2}
#echo logbase is ${logbase}
#echo dir is ${dir}
#printenv

#ffmpeg -loglevel debug -pix_fmt ${informat} -video_size ${resolution} -i $1   -pix_fmt ${2} ${outfile}

ffmpeg \
-video_size  ${resolution1} -pix_fmt ${informat1} -i "${1}" \
-video_size  ${resolution2} -pix_fmt ${informat2} -i "${2}" \
-lavfi psnr=stats_file=${outfilebase1}-psnr_logfile-${resolution1}-${format_list1}--${format_list2}.txt -f null -
