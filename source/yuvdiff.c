#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define RGB2YUV_SHIFT 15
#define BY ( (int) (0.114 * 219 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define BV (-(int) (0.081 * 224 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define BU ( (int) (0.500 * 224 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define GY ( (int) (0.587 * 219 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define GV (-(int) (0.419 * 224 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define GU (-(int) (0.331 * 224 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define RY ( (int) (0.299 * 219 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define RV ( (int) (0.500 * 224 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))
#define RU (-(int) (0.169 * 224 / 255 * (1 << RGB2YUV_SHIFT) + 0.5))


void show_coefficients(void)
{
	fprintf(stderr, "RY GY BY:  %d, %d, %d\n", RY, GY, BY);
	fprintf(stderr, "RU GU BU:  %d, %d, %d\n", RU, GU, BU);
	fprintf(stderr, "RV GV BV:  %d, %d, %d\n", RV, GV, BV);
}


int main(int argc, char **argv)
{
	unsigned int temp1 = 0, temp2 = 0, temp3 = 0;
	unsigned int temp_swap;
	unsigned char temp_byte;
	long i = 0, size1, size2, size3, samples;
	long y_error_cnt = 0, u_error_cnt = 0, v_error_cnt = 0;
	double y_error = 0.0, u_error = 0.0, v_error = 0.0; 
	double y_psnr = 0.0, u_psnr = 0.0, v_psnr = 0.0, psnr = 0.0;
	FILE *fin1,*fin2,*fin3;
	FILE *fout;

	fin1 = fopen(argv[1], "rb");
	if (fin1 == NULL)  
		goto exit0;

	fin2 = fopen(argv[2], "rb");
	if (fin2 == NULL)  
		goto exit1;

	fin3 = fopen(argv[3], "rb");
	if (fin3 == NULL) 
		goto exit2;

	//fout = fopen(argv[4], "wb+");
	//if (fout == NULL) 
	//        goto exit3;
	//

	fseek(fin1, 0L, SEEK_END);
	size1 = ftell(fin1);
	fseek(fin1, 0L, SEEK_SET);
	fprintf(stderr, "fin1 size %ld\n", size1);

	fseek(fin2, 0L, SEEK_END);
	size2 = ftell(fin2);
	fseek(fin2, 0L, SEEK_SET);
	fprintf(stderr, "fin2 size %ld\n", size2);

	fseek(fin3, 0L, SEEK_END);
	size3 = ftell(fin3);
	fseek(fin3, 0L, SEEK_SET);
	fprintf(stderr, "fin3 size %ld\n", size3);
	samples = size1 / 3;

	while (fread(&temp1, 1, 1, fin1)) {
		fread(&temp2, 1, 1, fin2);
		if (temp1 != temp2) {
			char sample_type;
			double error = powf((double)temp1 - (double)temp2, 2);
			
			fseek(fin3, (i % samples) * 4, SEEK_SET);
			fread(&temp3, 4, 1, fin3);

			if (i < samples) {
				sample_type = 'y'; 
				y_error_cnt++;
				y_error += error;
			} else if (i < (samples * 2)) {
				sample_type = 'u';
				u_error_cnt++;
				u_error += error; 
			} else {
				sample_type = 'v';
				v_error_cnt++;
				v_error += error; 
			}
			fprintf(stderr, "%c error 0x%02x != 0x%02x, 0x%08x r %3d g %3d b %3d\n", 
				sample_type, temp1, temp2, temp3, 
				(temp3 >> 16) & 0xff, (temp3 >> 8) & 0xff, (temp3 >> 0) & 0xff);
		}
		i++;
	}
	
	//PSNR = 10.0 * log10(pow(max,2) / (mse / nb_frames));
	
	y_psnr = 10.0 * log10(pow(255.0, 2) / (y_error / (double)samples));
	u_psnr = 10.0 * log10(pow(255.0, 2) / (u_error / (double)samples));
	v_psnr = 10.0 * log10(pow(255.0, 2) / (v_error / (double)samples));
	psnr   = 10.0 * log10(pow(255.0, 2) / ((y_error + u_error + v_error) / ((double)samples * 3)));

	fprintf(stderr, "total pixels components compared %ld\n", i);
	fprintf(stderr, "total pixels compared %ld\n", samples);

	fprintf(stderr, "y_error_cnt %ld\n", y_error_cnt);
	fprintf(stderr, "u_error_cnt %ld\n", u_error_cnt);
	fprintf(stderr, "v_error_cnt %ld\n", v_error_cnt);

	fprintf(stderr, "y_error %f\n", y_error);
	fprintf(stderr, "u_error %f\n", u_error);
	fprintf(stderr, "v_error %f\n", v_error); 

	fprintf(stderr, "y mse %f\n", y_error);
	fprintf(stderr, "u mse %f\n", u_error);
	fprintf(stderr, "v mes %f\n", v_error); 
     
	fprintf(stderr, "y psnr %f\n", y_psnr);
	fprintf(stderr, "u psnr %f\n", u_psnr);
	fprintf(stderr, "v psnr %f\n", v_psnr); 
	fprintf(stderr, "psnr %f\n", psnr);

	show_coefficients();
exit4:
//	fclose(fout);
exit3:
	fclose(fin3);
exit2:
	fclose(fin2);
exit1:
	fclose(fin1);
exit0:

	return 0;
}
