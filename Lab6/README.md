# Reconfigurable Logic

- Code: CSW42
- Credit: 4
- Professor: Luiz Fernando Copetti
- Email: copetti@utfpr.edu.br
- Student: Gabriel Alexandre Linhares Calper Seabra
- Email: gabrielseabra@alunos.utfpr.edu.br




# Introduction
<p>This lab aims to develop a NiosII processor inside the FPGA and interface it with a custom hardware. <p>

# Development Environment
- Windows 10
- Quartus II 13.0sp1 (64-bit) Web Edition
- TERASIC CYCLONE II EP2C35 Development & Education BOARD

# Lab6

To build the Nios we will use Qsys tool that is avaliable inside Quartus. Basically I've added only the peripherals is necessary to blink a LED in the DEII board, image bellow show the list of the added Peripherals.
  
![image](https://user-images.githubusercontent.com/48101913/171219778-9b240dee-41de-4639-9b46-738a2eab19fc.png)

Note that if you need to see any pin the Entity you must export its and do to it just click two times on "Export" column as you can see I've exported 3 Pins as follow.
  
![image](https://user-images.githubusercontent.com/48101913/171221747-1c0d521e-57c6-4502-b2c1-877ebfa9c0f4.png)

The pin planning is based on board **TERASIC CYCLONE II EP2C35 Development** and for this IC the pin planner looks like the image below

![image](https://user-images.githubusercontent.com/48101913/171223795-e27dd0f3-b7e6-4951-ba63-0f27e1665b30.png)

After do these step just download the code inside the fpga then go to Nios Eclipse version the program loaded inside the Nios processor is quite simple is just a program that you Turn on 3 LED depeding on the value of each input.

  
```cpp
  
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

```
  
