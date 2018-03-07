#pragma once
#include <stdint.h>

int16_t FIX_MPY(int16_t x, int16_t y);
int32_t FIX_MPY25by18(int32_t x,int32_t y);
int16_t SAT_ADD16(int16_t x,int16_t y);
int32_t SAT_ADD25(int32_t x,int32_t y);