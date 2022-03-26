# Reconfigurable Logic

- Code: CSW42
- Credit: 4
- Professor: Luiz Fernando Copetti
- Email: copetti@utfpr.edu.br
- Student: Gabriel Alexandre Linhares Calper Seabra
- Email: gabrielseabra@alunos.utfpr.edu.br




# Introduction
<p>This lab aims to describe a hardware using VHDL BCD-7Seg decoder <p>

# Development Environment
- Windows 10
- Quartus II 13.0sp1 (64-bit) Web Edition
- TERASIC CYCLONE II EP2C35 Development & Education BOARD


# Lab1

First of all we must imagine how our IC look like, the image below shows the IC.

![image](https://user-images.githubusercontent.com/48101913/160220468-9a3493cd-3783-4d72-91a6-d64672782f7f.png)

The code snippet related to the behavior of decode is the bellow vhdl code

```vhdl
    process(bcd_in)
    begin
        case (bcd_in) is
            when "0000" => bcd_out <= "0000001";	--0
            when "0001" => bcd_out <= "1001111"; 	--1
            when "0010" => bcd_out <= "0010010"; 	--2
            when "0011" => bcd_out <= "0000110"; 	--3
            when "0100" => bcd_out <= "1001100"; 	--4
            when "0101" => bcd_out <= "0100100"; 	--5
            when "0110" => bcd_out <= "0100000"; 	--6
            when "0111" => bcd_out <= "0001111"; 	--7
            when "1000" => bcd_out <= "0000000"; 	--8
            when "1001" => bcd_out <= "0000100"; 	--9
            when others => bcd_out <= "0100000"; 	--null
        end case;
    end process;
```

The pin planning is based on board **TERASIC CYCLONE II EP2C35 Development**

![pinplanner](https://user-images.githubusercontent.com/48101913/160220626-221e5bcd-1094-4c2c-88f9-8c3268f1b07c.PNG)

You can view the simulation on ModeSim just Download the testbench in this repository or you can download the .do file right here.

[wave.zip](https://github.com/Calperxd/calperxd_CSW41/files/8354520/wave.zip)
