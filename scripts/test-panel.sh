#!/bin/sh

DIR=$1
TEST=panel_oled1
RES=1920x1080
FMT=bgra

time ./patgen.exe -v -pattern circle     -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar   -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar2  -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern fill       -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern graybar    -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern gradient   -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern vgradient  -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern hsv        -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern test       -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern wheel      -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern font       -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorcheck -border -header -footer -rot 270 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

wait


TEST=panel_wuxga
RES=1920x1200
FMT=bgra

time ./patgen.exe -v -pattern checker -size 4 -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar   -border -header -foot er -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
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
time ./patgen.exe -v -pattern logo       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

wait

TEST=panel_xga
RES=1280x800
FMT=bgra

time ./patgen.exe -v -pattern checker -size 4 -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern circle     -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
time ./patgen.exe -v -pattern colorbar   -border -header -foot er -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &
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
time ./patgen.exe -v -pattern logo       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" &

wait

