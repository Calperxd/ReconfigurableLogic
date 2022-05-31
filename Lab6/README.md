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

The code snippet related to the behavior of decode is the bellow vhdl code

The pin planning is based on board **TERASIC CYCLONE II EP2C35 Development** and for this IC the pin planner looks like the image below

![pinplanner](https://user-images.githubusercontent.com/48101913/164029227-0dea4445-76ad-447f-be01-7052c611c122.PNG)

You can view the simulation on ModelSim just Download the testbench in this repository or you can download the .do file right here.

[wave.zip](https://github.com/Calperxd/calperxd_CSW41/files/8354520/wave.zip)
