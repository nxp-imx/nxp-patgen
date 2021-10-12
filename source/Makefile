CC=gcc
STRIP=strip

ifeq ($(OS),Windows_NT)
    CFLAGS += -D WIN32
    ifeq ($(PROCESSOR_ARCHITEW6432),AMD64)
        CCFLAGS += -D AMD64
    else
        ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
            CCFLAGS += -D AMD64
        endif
        ifeq ($(PROCESSOR_ARCHITECTURE),x86)
            CCFLAGS += -D IA32
        endif
    endif
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        CFLAGS += -D LINUX
	INCLUDES=-I. -I/usr/include/freetype2 -I/usr/include/libpng16
	LIBS= -lm -lfreetype

    endif
    ifeq ($(UNAME_S),Darwin)
        CFLAGS += -D OSX
	INCLUDES=-I. -I/opt/local/include/freetype2 -I/usr/include/libpng16
	LIBS= -lm -lfreetype -L/opt/local/lib

    endif
    UNAME_P := $(shell uname -p)
    ifeq ($(UNAME_P),x86_64)
        CCFLAGS += -D AMD64
    endif
    ifneq ($(filter %86,$(UNAME_P)),)
        CCFLAGS += -D IA32
    endif
    ifneq ($(filter arm%,$(UNAME_P)),)
        CCFLAGS += -D ARM
    endif
endif

DEPS = patgen.h bitmap.h
OBJ = patgen.o bitmap.o
EXE = patgen.exe

OFLAGS=-Os -O2
CFLAGS=-Wall

ifeq ($(DEBUG), 1)
    CFLAGS += -g -DDEBUG
else
    CFLAGS +=-DNDEBUG  $(OFLAGS)
endif
CFLAGS +=$(INCLUDES)

DEBUG ?= 0

all: $(EXE)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $<

$(EXE): $(OBJ)
	$(CC)  -o $@ $^ $(LIBS)
ifeq ($(DEBUG), 0)
	$(STRIP) $@
endif

clean:
	rm -fv $(OBJ) $(EXE)  $(EXE).debug
#	echo CCFLAGS $(CCFLAGS)

yuv-diff.exe:
	gcc yuvdiff.c -lm -o yuvdiff.exe

test-quality: all yuv-diff.exe
	mkdir -p ../patgen_test
	time ../scripts/test-quality.sh ../patgen_test

test-quick: all
	mkdir -p ../patgen_test
	time ../scripts/test-quick.sh ../patgen_test

test: all
	mkdir -p ../patgen_test
	time ../scripts/test.sh ../patgen_test


#.PHONY: test-all
test-all: all test-quality test-quick test

.PHONY: convert-all
convert-all:
	time ../scripts/run-ff-convert.sh ../patgen_test

clean-all: clean
	rm -fvr *.yuv *.rgb *.bmp ../patgen_test

help:
	@echo " "
	@echo "Supported make targets:"
	@echo "        all - builds patgen"
	@echo "        test - build patgen and runs test.sh script"
	@echo "        test-quick - build patgen and runs test-quick.sh script"
	@echo "        test-quality - build patgen and runs test-quality.sh script"
	@echo "        test-all - build patgen and runs all test scripts"
	@echo "        convert-all - converts all .yuv and .rgb file to bitmaps"
	@echo "        clean-all - removes build targets and pattern files"
	@echo "        clean - removes build files"
	@echo " "
	@echo "For debug builds use \"DEBUG=1 make all\""
	@echo " "

