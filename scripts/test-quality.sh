#!/bin/sh

DIR=$1
BG=&

TEST=test50
RES=1280x720
FMT=bgra
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
FMT=yuv444p
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
FMT=yuyv422
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
FMT=yuv420p
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}

wait

TEST=test51
RES=1920x1080
FMT=bgra
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
FMT=yuv444p
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
FMT=yuyv422
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
FMT=yuv420p
time ./patgen.exe -v -pattern test       -border -header -footer -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}

wait

TEST=test52
RES=512x256
FMT=bgra
time ./patgen.exe -v -pattern colorbar  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern colorbar2 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern graybar   -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" -steps 64 ${BG}
time ./patgen.exe -v -pattern hsv       -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern gradient  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern test      -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" -border -header -footer ${BG}

wait 

FMT=yuv444p
time ./patgen.exe -v -pattern colorbar  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern colorbar2 -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern graybar   -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" -steps 64 ${BG}
time ./patgen.exe -v -pattern hsv       -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern gradient  -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" ${BG}
time ./patgen.exe -v -pattern test      -vsize $RES -pix_fmt $FMT -outname "$DIR/$TEST" -border -header -footer ${BG}

wait

../scripts/ff-csc.sh "$DIR"/test50-test-1280x720-bgra.rgb  yuv444p  yuv ${BG}
../scripts/ff-csc.sh "$DIR"/test52-colorbar-512x256-bgra.rgb  yuv444p  yuv ${BG}
../scripts/ff-csc.sh "$DIR"/test52-colorbar2-512x256-bgra.rgb  yuv444p  yuv ${BG}
../scripts/ff-csc.sh "$DIR"/test52-hsv-512x256-bgra.rgb yuv444p  yuv ${BG}
../scripts/ff-csc.sh "$DIR"/test52-graybar-512x256-bgra.rgb yuv444p  yuv ${BG}
../scripts/ff-csc.sh "$DIR"/test52-test-512x256-bgra.rgb yuv444p  yuv ${BG}
../scripts/ff-csc.sh "$DIR"/test52-gradient-512x256-bgra.rgb yuv444p  yuv ${BG}

wait


# run these sequentially so logs are not mangled
../scripts/ff-psnr.sh  "$DIR"/test50-test-1280x720-yuv444p.yuv "$DIR"/test50-test-1280x720-yuv444p_bgra.yuv

../scripts/ff-psnr.sh "$DIR"/test52-test-512x256-yuv444p.yuv "$DIR"/test52-test-512x256-yuv444p_bgra.yuv 
../scripts/ff-psnr.sh "$DIR"/test52-colorbar-512x256-yuv444p.yuv "$DIR"/test52-colorbar-512x256-yuv444p_bgra.yuv 
../scripts/ff-psnr.sh "$DIR"/test52-colorbar2-512x256-yuv444p.yuv "$DIR"/test52-colorbar2-512x256-yuv444p_bgra.yuv
../scripts/ff-psnr.sh "$DIR"/test52-graybar-512x256-yuv444p.yuv "$DIR"/test52-graybar-512x256-yuv444p_bgra.yuv
../scripts/ff-psnr.sh "$DIR"/test52-hsv-512x256-yuv444p.yuv "$DIR"/test52-hsv-512x256-yuv444p_bgra.yuv
../scripts/ff-psnr.sh "$DIR"/test52-gradient-512x256-yuv444p.yuv "$DIR"/test52-gradient-512x256-yuv444p_bgra.yuv

../scripts/show-psnr-results.sh $DIR
