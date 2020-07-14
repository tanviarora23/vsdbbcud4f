* converted by ltspice2lclayout.pl

.subckt LEFT VDD GND PDEN PUEN out_t
M13 VDD PUEN 12 VDD PMOS l=0.18u w=0.50u
M14 10 PDEN GND GND NMOS l=0.18u w=0.50u
M19 VDD PDEN 10 VDD PMOS l=0.18u w=0.50u
M20 12 10 GND GND NMOS l=0.18u w=0.50u
*R1 out_t 12 90000
.ends LEFT

