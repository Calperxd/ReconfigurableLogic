# Reconfigurable Logic

- Code: CSW42
- Credit: 4
- Professor: Luiz Fernando Copetti
- Email: copetti@utfpr.edu.br
- Student: Gabriel Alexandre Linhares Calper Seabra
- Email: gabrielseabra@alunos.utfpr.edu.br




# Introduction
<p>This lab consists of develop a counter module 57 that counts from 12 up to 68 then reset and count again, the reset function is asynchronous so you can reset any time <p>

# Development Environment
- Windows 10
- Quartus II 13.0sp1 (64-bit) Web Edition
- TERASIC CYCLONE II EP2C35 Development & Education BOARD


# Lab6

First of all we must imagine how our IC look like, the image below shows the IC.

![counter](https://user-images.githubusercontent.com/48101913/164028414-9cc0080b-26c7-457e-979f-5f9ad4dcbfa5.jpg)

The code snippet related to the behavior of decode is the bellow vhdl code

```vhdl
    process(clock, count1, count2)
    begin
        if reset = '1' then
            count1 <= 1;
            count2 <= 2;
        elsif rising_edge(clock) then
            count1 <= count1 + 1;
            if count1 = 9 then
                count2 <= count2 + 1;
                count1 <= 0;
            elsif count1 = 8 then
                if count2 = 6 then
                    count1 <= 1;
                    count2 <= 2;
                end if ;
            end if ;
        end if ;
    end process;

    bcd_4_out1 <= to_unsigned(count1, bcd_4_out1'length);
    bcd_4_out2 <= to_unsigned(count2, bcd_4_out2'length);
```

The pin planning is based on board **TERASIC CYCLONE II EP2C35 Development** and for this IC the pin planner looks like the image below

![pinplanner](https://user-images.githubusercontent.com/48101913/164029227-0dea4445-76ad-447f-be01-7052c611c122.PNG)

You can view the simulation on ModelSim just Download the testbench in this repository or you can download the .do file right here.

[wave.zip](https://github.com/Calperxd/calperxd_CSW41/files/8354520/wave.zip)
