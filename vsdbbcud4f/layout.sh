
perl ltspice2lclayout.pl vsdbbcud4f/left1.cir left.sp
perl ltspice2lclayout.pl vsdbbcud4f/middle1.cir middle.sp
perl ltspice2lclayout.pl vsdbbcud4f/right1.cir right.sp


lclayout --cell right --netlist right.sp --tech librecell_tech.py --verbose
lclayout --cell middle --netlist middle.sp --tech librecell_tech.py --verbose
lclayout --cell left --netlist left.sp --tech librecell_tech.py --verbose

