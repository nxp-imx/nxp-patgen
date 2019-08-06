/*
 * Copyright 2019 NXP
 */
/*
 * The code contained herein is licensed under the GNU General Public
 * License. You may obtain a copy of the GNU General Public License
 * Version 2 or later at the following locations:
 *
 * http://www.opensource.org/licenses/gpl-license.html
 * http://www.gnu.org/copyleft/gpl.html
 */

#ifndef _BITMAP_H_
#define _BITMAP_H_

typedef struct bitmap_s {
	uint32_t w;
	uint32_t h;
	uint32_t stride;
	uint32_t rotation;
	uint32_t format;
	uint32_t bpp;
	uint32_t planes;
	uint32_t h_sub;
	uint32_t w_sub;
	uint32_t *buffer;
	uint8_t *buffer_luma;
	uint8_t *buffer_chroma;
	uint8_t *buffer_alpha;
	//uint32_t *lines;

	double   alpha;
	double   intensity;
	int debug;
} bitmap_t;

typedef struct rgba_s {
	uint8_t b;
	uint8_t g;
	uint8_t r;
	uint8_t a;
} rgba_t;

typedef struct yuva_s {
	uint8_t y;
	uint8_t u;
	uint8_t v;
	uint8_t a;
} yuva_t;

typedef union {
	yuva_t  yuv;
	rgba_t  rgb;
	uint32_t word;
} color_t;

#define MAX_HEIGHT (4*1024)
#define MAX_WIDTH  (8*1024)
#define MAX_PATH 1024

#define MAX_COLOR_NAME 32
#define MAX_RGB10 0x3ff
#define MAX_A2    0x3
#define MAX_RGBA  0xff
#define MAX_YUVA  0xff
#define MAX_RB5   0x1f
#define MAX_G6    0x3f

/* these are used to allocate the max size buffers needed
 * for RGB and YUV
*/
#define RGB_BUFFER_BYTES  (4)
#define LUMA_BUFFER_BYTES (4)
#define CHROMA_BUFFER_BPP (2)
#define ALPHA_BUFFER_BPP  (1)

typedef struct bitmap_color_s {
	color_t color;
	char *name;
} bitmap_color_t;

/* 8-8-8-8 */
#define BGRA_PIXEL(r,g,b,a) \
(((a & MAX_RGBA)<<24) |  ((r & MAX_RGBA)<<16) | \
((g & MAX_RGBA)<<8) | (b & MAX_RGBA))

/* 10-10-10-2*/
#define BGRA10_PIXEL(r,g,b,a) \
(((a & MAX_A2) << 30) |  ((r & MAX_RGB10) <<20) | \
((g & MAX_RGB1) << 10) | (b & MAX_RGB10))

/* 5-6-5*/
#define BGR656_PIXEL(r,g,b,a) \
(((r & 0x1f)<<11) |  ((g&0x3f)<<5) | (b&0x1f)<<0)

#define YUVA_PIXEL(y,u,v,a) \
(((y & MAX_YUVA) << 24) |  ((u & MAX_YUVA) << 16) | \
 ((v & MAX_YUVA) << 8) | (a & MAX_YUVA))

#define BGRA_RED(_p)   (((uint32_t)(_p)>> 16) & 0xff)
#define BGRA_GREEN(_p) (((uint32_t)(_p)>>  8) & 0xff)
#define BGRA_BLUE(_p)  (((uint32_t)(_p)>>  0) & 0xff)
#define BGRA_ALPHA(_p) (((uint32_t)(_p)>> 24) & 0xff)

/* HSV limits */
#define PER_LOWER_LIMIT (0.0)
#define PER_UPPER_LIMIT (1.0)
#define HUE_LOWER_LIMIT (0.0)
#define HUE_UPPER_LIMIT (360.0)

#define HORIZONTAL 0
#define VERTICAL   1
#define TRUE  1
#define FALSE 0

enum {
	FORMAT_BGRA8888,
	FORMAT_BGR565,
	FORMAT_NV12,
	FORMAT_YUV444,
	FORMAT_YUV420,
};

int bitmap_create(bitmap_t *bm, int w, int h, int stride,
		  int rotation, unsigned int format);
int bitmap_destroy(bitmap_t *bm);
void bitmap_dump(bitmap_t *bm);
void bitmap_set_debug(bitmap_t *bm, int level);
int bitmap_is_yuv(unsigned int f);

uint32_t bitmap_get_color(bitmap_t *bm, char *name, uint32_t *color);
uint32_t bitmap_set_intensity(bitmap_t *bm, uint32_t color, double intensity);
uint32_t bitmap_set_alpha(bitmap_t *bm, uint32_t color, double alpha);
int bitmap_copy_line(bitmap_t *bm, int y, uint32_t *line);
int bitmap_copy_line_segment(bitmap_t *bm, int x0, int y0,
			     int size, uint32_t *line);
int bitmap_draw_pixel(bitmap_t *bm, int x, int y, uint32_t v);
int bitmap_draw_circle(bitmap_t *bm,
		       int x0, int y0,
		       int r0, uint32_t v);
int bitmap_fill_rectangle(bitmap_t *bm,
			  int x0, int y0,
			  int x1, int y1,
			  uint32_t pixel);

int bitmap_write_file(bitmap_t *bm, char *out);

int bitmap_hbars(bitmap_t *bm,
		 int x0, int y0,
		 int x1, int y1,
		 uint32_t *colors, int num_colors);
int bitmap_checker(bitmap_t *bm,
		   int x0, int y0,
		   int x1, int y1,
		   uint32_t *colors, /* size is two element */
		   int checker_size);
int bitmap_lines(bitmap_t *bm,
		 int x0, int y0,
		 int x1, int y1,
		 uint32_t *colors, /* size is two element */
		 int size,
		 int orientation);
int bitmap_gradient(bitmap_t *bm,
		    int x0, int y0,
		    int x1, int y1,
		    int r0, int g0, int b0,
		    int r1, int g1, int b1,
		    int orientation);
int bitmap_hsv_circle(bitmap_t *bm, int x0, int y0, int x1, int y1, double);
int bitmap_hsv_rectangle(bitmap_t *bm, int x0, int y0, int x1, int y1,
			 int margin, double val, double degrees);
int bitmap_corners(bitmap_t *bm, int margin);
int bitmap_render_font(bitmap_t *bm,
		       char *filename,
		       char *text,
		       int size,
		       uint32_t x0,
		       uint32_t y0,
		       uint32_t color);
#endif
