#!/bin/sh

DIR=$1
TEST=test01
RES=1280x720
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern fill       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern graybar    -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern gradient   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern vgradient  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern hsv        -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern wheel      -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorcheck -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

RES=1920x1080
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
RES=3840x720
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

FMT=rgb565le
RES=1280x720
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
RES=1920x1080
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
RES=3840x720
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

wait


