#!/bin/sh

DIR=$1
TEST=test01
RES=1280x720
FMT=yuv444p
INTENSITY=90.0

time ./patgen.exe -v -border -header -footer -pattern circle     -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorbar   -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorbar2  -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern fill       -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern graybar    -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern gradient   -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern vgradient  -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern hsv        -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern test       -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern wheel      -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern font       -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorcheck -vsize $RES -i $INTENSITY -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test02
RES=1920x1080
FMT=rgb565le

time ./patgen.exe -v -border -header -footer -pattern circle     -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorbar   -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorbar2  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern fill       -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern graybar    -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern gradient   -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern vgradient  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern hsv        -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern test       -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern wheel      -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern font       -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorcheck -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test03
RES=720x480
FMT=bgra

ALPHA=80.0
MIN=40.0
MAX=60.0
STEPS=21
INTENSITY=50.0

time ./patgen.exe -v -border -header -footer -pattern circle     -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorbar   -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorbar2  -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern fill       -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern graybar    -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern gradient   -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern vgradient  -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern hsv        -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern test       -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern wheel      -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern font       -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -footer -pattern colorcheck -alpha $ALPHA -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test04
RES=3840x2160
FMT=yuv420p

MIN=0.0
MAX=100.0
STEPS=51
INTENSITY=25.0
COLOR=0xffff00
CHECKER=2

time ./patgen.exe -v -border -footer -pattern circle    -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern colorbar  -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern colorbar2 -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern fill      -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern graybar   -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern gradient  -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern vgradient -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern hsv       -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern test      -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern wheel     -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern font      -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -footer -pattern colorcheck -c $COLOR -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test05
RES=640x480
FMT=nv12

MIN=0.0
MAX=100.0
STEPS=11
INTENSITY=100.0
CHECKER=4

time ./patgen.exe -v -border -header -pattern circle     -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern colorbar   -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern colorbar2  -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern fill       -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern graybar    -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern gradient   -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern vgradient  -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern hsv        -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern test       -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern wheel      -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern font       -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -border -header -pattern colorcheck -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test06
RES=3840x2160
FMT=bgra

MIN=0.0
MAX=100.0
STEPS=21
INTENSITY=100.0
CHECKER=8

time ./patgen.exe -v -pattern circle     -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck       -rot 180 -size $CHECKER -min_i $MIN -max_i $MAX -i $INTENSITY -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test07
RES=1920x1080
FMT=yuv444p
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -border -header -footer -rot 90 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test08
RES=1920x1080
FMT=yuv444p
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test09
RES=800x480
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test10
RES=1920x1200
FMT=bgra

time ./patgen.exe -v -pattern checker -size 2    -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test11
RES=860x600
FMT=bgra

time ./patgen.exe -v -pattern circle     -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test12
RES=5120x1440
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test13
RES=4400x720
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test14
RES=8192x8192
FMT=bgra

time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test15
RES=4096x4096
FMT=bgra

time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

TEST=test16
RES=8192x4096
FMT=bgra

time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"


TEST=test17
RES=1280x800
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern fill       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern graybar    -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern gradient   -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern vgradient  -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern hsv        -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern wheel      -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern font       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"
time ./patgen.exe -v -pattern colorcheck -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"


CONTAINER_FMT=bmp

echo "-----------------------------------------------------------"
for file in $DIR/*.rgb ; do
     [ -f "$file" ] || continue
     echo "-----------------------------------------------------------"
     echo converting $file to $CONTAINER_FMT
     ../scripts/ff-convert.sh $file $CONTAINER_FMT
done

echo "-----------------------------------------------------------"
for file in $DIR/*.yuv ; do
     [ -f "$file" ] || continue
     echo "-----------------------------------------------------------"
     echo converting $file to $CONTAINER_FMT
     ../scripts/ff-convert.sh $file $CONTAINER_FMT
done
echo "-----------------------------------------------------------"



TEST=test17
RES=8192x8192
FMT=yuva444

time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

FMT=yuv444
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

FMT=yuv422
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST"

