#pragma once
#include <stdint.h>

static uint32_t seed, iy, ir[98];
/*
@defgroup _uniformdouble 
@ingroup numerical Uniform linear congruential random number generator.
*/

/*!\brief Initialization routine for Uniform/Gaussian random number generators. */

#define a 1664525lu
#define mod 4294967296.0                /* is 2**32 */

void randominit();
double uniformrandom();
double gaussdouble(double mean, double variance);