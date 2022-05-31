#include "sys/alt_stdio.h"
#include "System.h"
#include "io.h"

int main()
{ 
  unsigned char test;
  while (1)
  {
	  test = IORD(PIN_ENTRADA_BASE, 0);
	  IOWR(PIN_SAIDA_BASE,0, test);
  }
  return 0;
}
