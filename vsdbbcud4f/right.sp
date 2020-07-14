* converted by ltspice2lclayout.pl 

.subckt RIGHT VDD GND a en out_t
M5 VDD a 3 VDD PMOS l=0.18u w=0.36u
M6 VDD 2 out_t VDD PMOS l=0.18u w=0.36u
M7 3 en 2 VDD PMOS l=0.18u w=0.36u
M8 VDD en 1 VDD PMOS l=0.18u w=0.36u
M9 out_t 2 GND GND NMOS l=0.18u w=0.36u
M10 2 1 4 GND NMOS l=0.18u w=0.36u
M11 4 a GND GND NMOS l=0.18u w=0.36u
M12 1 en GND GND NMOS l=0.18u w=0.36u
.ends RIGHT

