/*
 * main.c
 *
 *  Created on: 29 июля 2021 г.
 *      Author: Aleksandr
 */
#include "sys/alt_stdio.h"
#include "system.h"
#include "altera_avalon_pio_regs.h"


void delay(int val)
{
	int tmp = 0;
	while(tmp < 100000*val){tmp++;}
}

int main()
{
	  alt_putstr("Hello from Nios II!\n");

	  int data_led = 0x01;
  /* Event loop never exits. */
  while (1)
  {
	 //Put data_led into GPIOs
	  IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE, ~data_led);
	  delay(1);

	  //Left shift data_led
	  data_led = data_led << 1;

	  //Check for right end
	  if(data_led == 0x10)
		  data_led = 0x01;
  }
  return 0;
}

