* converted by ltspice2lclayout.pl

.subckt MIDDLE VDD GND PI PO Y out_t
M15 PO Y N001 GND NMOS l=0.18u w=0.36u
M16 N001 PI GND GND NMOS l=0.18u w=0.36u
M17 VDD Y PO VDD PMOS l=0.18u w=0.36u
M18 PO PI VDD VDD PMOS l=0.18u w=0.36u
M1 5 out_t GND GND NMOS l=0.18u w=0.36u
M2 Y 5 GND GND NMOS l=0.18u w=0.36u
M3 VDD out_t 5 VDD PMOS l=0.18u w=0.36u
M4 VDD 5 Y VDD PMOS l=0.18u w=0.36u
.ends MIDDLE
