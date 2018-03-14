/*! \mainpage Useful Numerical Functions
\section scope_numerical Scope
The present document specifies several numerical functions for testing of digital communication systems.

-# Generation of Uniform Random Bits
-# Generation of Quantized Gaussian Random Variables
-# Generation of QAM-modulated random sequences (with provision for OFDM signal formats)

@defgroup numerical

@defgroup _taus 
@ingroup numerical Tausworthe Uniform Random Variable Generator.*/
#pragma once

#include <time.h>
#include <stdint.h>

uint32_t s0, s1, s2, b;

uint32_t taus();
void set_taus_seed();