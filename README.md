# vsdbbcud4f
Bi-directional Buffer with Non-Inverting CMOS Input and Gated Pull-down and Pull-up,Strength 4mA @ 3.3V,Normal,High noise (Fast Speed)
# DESCRIPTION OF VSDBBCUD4F
 VSDBBCUD4F is a GPIO(General Purpose Input Output) IP. It suits maximum frequency of approximately 2.538 MHz. Data flow is bidirectional i.e. from Input Output or OutputInput depends on user’s choice of Enable pin.

#SYMBOL

#PIN DESCRIPTIONS
I.	A – (INPUT )-Input data is given at this pin.
II.	EN– (INPUT )-When  EN=0 : Output path(core APAD) is  followed.
                                        When EN=1 : Input path (PAD YCORE)is  followed.
III.	PAD– (IO )-Bidirectional port.(Needed for communication between IPs)
IV.	PDEN – (INPUT )-Pull down Enable, connected to ground, pull down pin to low value when signal is floating.
V.	PI– (INPUT )-Input data at pad, Determines output of PO on  inputting with Y.
VI.	PO– (OUTPUT )-Output from pad, Determined by Y and PI as inputs of dual nand gate.  
VII.	PUEN– (INPUT )-Pull up Enable,connected to vdd, pull up pin to high value when signal is floating.
VIII.	Y-(OUTPUT)-Output pin.

#Typical Performance Characteristics
# Future Work 
Placing and Routing (PNR) is pending. Fixed Layout and post Layout Simulations will be released soon. Trying to maximize frequency of GPIO as currently it suits maximum frequency of approximately 2.538 MHz.

# IP USAGE
# TOOLS NEEDED TO USE THIS IP
1.ngspice
IN ubuntu20.04:

   $ sudo apt-get install ngspice 
2.ltspice LTspiceXVII is used to simulate the General Purpose Input Output(GPIO). LtspiceXVII is a spice simulation software produced by semiconductor manufacturer Analog Devices. Schematic of circuits and the waveforms can be obtained easily from this tool.

3.Electric VLSI Design System (for layout and post-layout simulation purpose)
In linux: $ sudo apt-get install electric
Y
Or directly use $ sudo apt-get install –y electric
$ electric
#STEPS TO CLONE IP ON TO UNIX BASED SYSTEMS AND RUN PRE-LAYOUT SIMULATIONS
$ sudo apt-get install ngspice
$ sudo apt install git
$ git clone https://github.com/tanviarora23/vsdbbcud4f ls
$ cd vsdbbcud4f$ ls
$la
ngspice netlist.cir
run
display
plot a
plot en
plot y
plot pden
plot puen
plot pi
plot po
plot out_t which is to see pad IO
NOTE : PRELAYOUT SIMULATIONS ARE TESTED FOR osu180nm
#STEPS TO OPEN LAYOUT IN ELECTRIC
            Work in progress . Will update soon
#STEPS TO RUN POST-LAYOUT SIMULATIONS
            Work in progress . Will update soon.
CAD TOOL REPORTING
VSDBBCUD4F is a GPIO(General Purpose Input Output) IP. It suits maximum frequency of approximately 2.538 MHz. Data flow is bidirectional i.e. from Input Output or OutputInput depends on user’s choice of Enable pin.
# Inputs needed for tool usage 
#
$ sudo apt-get install electric
Y
Or directly use $ sudo apt-get install –y electric
$ electric













# PIN DESCRIPTIONS




# TOOL USED
LTspiceXVII is used to simulate the General Purpose Input Output(GPIO). LtspiceXVII is a spice simulation software produced by semiconductor manufacturer Analog Devices. Schematic of circuits and the waveforms can be obtained easily from this tool.

# INSTALLING LTSpiceXVII

   FOR Windows AND MacOS

  1.Download LTspice from [here](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html) 
  
  2.Follow basic installation steps and install LTspice simulatorXVII on your Windows system or Mac.You can download according to your operating system.

   FOR LINUX OS
	
   1.LINUX Users have to install WINE from [here](https://wiki.winehq.org/Download) as LTSpice is not directly supported.
   
   2.Similar steps are followed as mentioned for windows to download LTspice setup.
   
   3.Right click on the downloaded setup file and select the option Open With Wine Windows Program Loader.
   
   4.Afterwards basic installation steps are followed.
   
   # SCHEMATICS AND SIMULATIONS

  1.After installation Go to New schematic option on top left and draw circuit schematic using components available on top.
  
  2.Go to ` Edit->Spice Directive’S’ ` to edit text on the schematic. Also provide input voltage as required by clicking right button and then advanced and changing input form as required. Save circuit with extension (.asc).

  3.To open file which is already created,Go to ` File->Open ` (Ctrl+O) and select file with .asc extension.

  4.Go to ` Simulate->Run ` to obtain waveforms.

  5.You can select parameters you want to display or directly click on that part of circuit(to be displayed). 

  6.SPICE NETLIST can be obtained from View->SPICE Netlist.
  

# simulation by ngspice

ngspice is the open source simulator.

# NGSPICE 32
1. Download ngspice32 and after installing spice64 folder is seen.
![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/NGSPICE%2032/A.png)

2.add your cir file to its bin folder.
![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/NGSPICE%2032/B.png)

3.click on ngspice.exe and write name of your file added.
![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/NGSPICE%2032/C.png)

4.then give cmd RUN
![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/NGSPICE%2032/D.png)

5.after that display
![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/NGSPICE%2032/E.png)

6.now give command plot VARIABLE NAME and waveform is there.

7.after execution give cmd quit

# CONTACT INFORMATION
I.TANVI ARORA,ECE,Deenbandhu Chhotu Ram Universiy of Science and Technology,Murthal,Haryana. tanviarora1058@gmail.com

II.KUNAL GHOSH Director, VSD Corp. Pvt. Ltd. kunalpghosh@gmail.com

III.PHILIPP GÜHRING Software Architect at LibreSilicon Association pg@futureware.at

IV.Dr. GAURAV TRIVEDI Co-Principal Investigator, EICT Academy,
and Associative Professor, EEE Department, IIT Guwahati trivedi@iitg.ac.in
