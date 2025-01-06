#!/bin/sh

DIR=$1
TEST=test1001
RES=390x390
STR=448
FMT=rgb565le

TEST=checker_size1
time ./patgen.exe -v -pattern checker -size 1 -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
TEST=checker_size2 
time ./patgen.exe -v -pattern checker -size 2 -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
TEST=checker_size3
time ./patgen.exe -v -pattern checker -size 3 -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
TEST=checker_size4
time ./patgen.exe -v -pattern checker -size 4 -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

TEST=test1002
time ./patgen.exe -v -pattern circle     -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar   -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar2  -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern fill       -stride $STR -c 0xffff00 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern graybar    -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern gradient   -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern vgradient  -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern hsv        -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern test     -grid  -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern wheel      -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
#time ./patgen.exe -v -pattern font       -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorcheck -border -stride $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

TEST=test1003
FMT=16-bit
time ./patgen.exe -v -pattern 16m_colors  -stride  $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

TEST=test1004_tiled
time ./patgen.exe -v -pattern 16m_colors -tile 2x2 -stride  $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

FMT=rgb565le
#time ./patgen.exe -v -pattern test       -tile 2x2 -stride  $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
#time ./patgen.exe -v -pattern colorbar   -tile 2x2 -stride  $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

TEST=test1005
FMT=16-bit
time ./patgen.exe -v -pattern countrow    -stride  $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern countcolumn -stride  $STR -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &


wait
