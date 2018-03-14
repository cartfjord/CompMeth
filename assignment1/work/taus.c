#include "taus.h"

//----------------------------------------------
//
/*!\brief Tausworthe Uniform Random Generator.  This is based on the hardware implementation described in 
  Lee et al, "A Hardware Gaussian Noise Generator Usign the Box-Muller Method and its Error Analysis," IEEE Trans. on Computers, 2006.
*/
//

uint32_t taus() {

  b = (((s0 << 13) ^ s0) >> 19);
  s0 = (((s0 & 0xFFFFFFFE) << 12)^  b);
  b = (((s1 << 2) ^ s1) >> 25);
  s1 = (((s1 & 0xFFFFFFF8) << 4)^  b);
  b = (((s2 << 3) ^ s2) >> 11);
  s2 = (((s2 & 0xFFFFFFF0) << 17)^  b);
  return s0 ^ s1 ^ s2;
}

void set_taus_seed() {


  s0 = (uint32_t)time(NULL);// 0x1e23d852;
  s1 = (uint32_t)time(NULL); //0x81f38a1c;
  s2 = (uint32_t)time(NULL); //0xfe1a133e;

}

/*
main() {

  uint32_t i,rand;

  set_taus_seed();

  for (i=0;i<10;i++){

    rand = taus();
    printf("%u\n",rand);

  }
}
*/