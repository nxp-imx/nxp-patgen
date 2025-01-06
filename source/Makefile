CC?=gcc
STRIP?=strip
INCLUDE_BASE_DIR?=/usr/include
LIBRARY_BASE_DIR?=/lib
DEBUG ?= 0

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S),Linux)
	INCLUDES=-I. -I$(INCLUDE_BASE_DIR)/freetype2 -I$(INCLUDE_BASE_DIR)/include/libpng16
	LIBS= -lm -lfreetype -L$(LIBRARY_BASE_DIR)
endif

ifeq ($(UNAME_S),Darwin)
	INCLUDES=-I. -I$(HOMEBREW_PREFIX)/include/freetype2 -I$(HOMEBREW_PREFIX)/include/libpng16
	LIBS= -lm -lfreetype -L$(HOMEBREW_PREFIX)/lib
endif

DEPS = patgen.h bitmap.h
OBJ = patgen.o bitmap.o
EXE = patgen.exe

CFLAGS+=-Wall

ifeq ($(DEBUG), 1)
    CFLAGS += -g -DDEBUG
else
    CFLAGS +=-DNDEBUG  $(OFLAGS)
endif
CFLAGS += $(INCLUDES) -std=gnu99
LDFLAGS += -Os -O2 $(LIBS)

all: $(EXE)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(EXE): $(OBJ)
	$(CC)  -o $@ $^ $(LDFLAGS)
ifeq ($(DEBUG), 0)
	$(STRIP) $@
endif

clean:
	rm -fv $(OBJ) $(EXE)  $(EXE).debug

test-quality: all
	mkdir -p ../patgen_test
	time ../scripts/test-quality.sh ../patgen_test

test-quick: all
	mkdir -p ../patgen_test
	time ../scripts/test-quick.sh ../patgen_test

test-grid: all
	mkdir -p ../patgen_test
	time ../scripts/test-grid.sh ../patgen_test

test-panel: all
	mkdir -p ../patgen_test
	time ../scripts/test-panel.sh ../patgen_test

test: all
	mkdir -p ../patgen_test
	time ../scripts/test.sh ../patgen_test

test-all: all test-quality test-quick ptest-panel test

convert-all:
	time ../scripts/run-ff-convert.sh ../patgen_test

clean-all: clean
	rm -fvr *.yuv *.rgb *.bmp ../patgen_test ../patgen-linux-test-export

.PHONY: doc
doc: all
	./patgen.exe -h 2> ../README

linux-test-export: all doc
	rm -rf ../patgen-linux-test-export
	mkdir -p ../patgen-linux-test-export
	cp ../README ../patgen-linux-test-export/README_patgen
	cp Makefile.linux-test ../patgen-linux-test-export/Makefile
	cp patgen.c bitmap.c bitmap.h ../patgen-linux-test-export
	cp ../fonts/K1FS-1.2/K1FS.ttf ../patgen-linux-test-export
	cp ../fonts/K1FS-1.2/LICENSE  ../patgen-linux-test-export/LICENSE.K1FS.ttf
	ln -s ./K1FS.ttf ../patgen-linux-test-export/body-font.ttf
	ln -s ./K1FS.ttf ../patgen-linux-test-export/header-font.ttf

help:
	@echo " "
	@echo "Supported make targets:"
	@echo "        all - builds patgen"
	@echo "        linux-test-export - create a source directory for linux-test"
	@echo "        test - build patgen and runs test.sh script"
	@echo "        test-quick - build patgen and runs test-quick.sh script"
	@echo "        test-quality - build patgen and runs test-quality.sh script"
	@echo "        test-all - build patgen and runs all test scripts"
	@echo "        convert-all - converts all .yuv and .rgb file to bitmaps"
	@echo "        clean-all - removes build targets and pattern files"
	@echo "        clean - removes build files"
	@echo "        doc - create README"
	@echo "        help - shows the make targets"
	@echo " "
	@echo "For debug builds use \"DEBUG=1 make all\""
	@echo " "

