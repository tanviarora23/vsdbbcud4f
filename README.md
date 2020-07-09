# DATASHEET
 ## vsdbbcud4f
   Bi-directional Buffer with Non-Inverting CMOS Input and Gated Pull-down and Pull-up,Strength 4mA @ 3.3V,Normal,High noise (Fast Speed)
   
 ## DESCRIPTION OF VSDBBCUD4F
   VSDBBCUD4F is a GPIO(General Purpose Input Output) IP. It suits maximum frequency of approximately 2.538 MHz. Data flow is bidirectional i.e. from 'Input TO Output' or 
   'Output TO Input' depends on user’s choice of Enable pin.

 ## SYMBOL
 
![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/pin.png)

 ## PIN DESCRIPTIONS
    
 1.A – (INPUT )-Input data is given at this pin.
 
 2.EN– (INPUT )-When  EN=0 : Output path(core APAD) is  followed.
                                        When EN=1 : Input path (PAD YCORE)is  followed.
 
 3.PAD– (IO )-Bidirectional port.(Needed for communication between IPs)
 
 4.PDEN – (INPUT )-Pull down Enable, connected to ground, pull down pin to low value when signal is floating.
 
 5.PI– (INPUT )-Input data at pad, Determines output of PO on  inputting with Y.
 
 6.PO– (OUTPUT )-Output from pad, Determined by Y and PI as inputs of dual nand gate.  
 
 7.PUEN– (INPUT )-Pull up Enable,connected to vdd, pull up pin to high value when signal is floating.
 
 8.Y-(OUTPUT)-Output pin.
## block diagram

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/img/Screenshot%20(4609).png) 

## CIRCUIT DIAGRAM

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5179).png)

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5180).png)

## Typical Performance Characteristics

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/specifications.png)

## Future Work 
      ISSUES:
	      1.Layout and Post Layout Simulations are in progress.
	      2. Placing and Routing (PNR) is pending. 
    Fixed Layout and post Layout Simulations will be released soon. Trying to maximize frequency of GPIO as currently it suits maximum frequency of approximately 2.538 MHz.


# IP USAGE

## TOOLS NEEDED TO USE THIS IP
 
 1. ngspice

 IN ubuntu20.04:
 ` $ sudo apt-get install ngspice `
			 
 IN Windows10:
            
	    1. Download ` ngspice32 ` and after installing ` spice64 ` folder is seen.
            
	    2.add your `cir file ` to its bin folder.
            
	    3.click on ` ngspice.exe ` and write ` name  ` of your file added.
            
	    4.then give cmd ` RUN `
            
	    5.after that ` display `
            
	    6.now give command ` plot VARIABLE NAME ` and waveform is there.
            
	    7.after execution give cmd ` quit `


   2. LTspiceXVII is used to simulate the General Purpose Input Output(GPIO). LtspiceXVII is a spice simulation software produced by semiconductor manufacturer Analog Devices.         Schematic of circuits and the waveforms can be obtained easily from this tool.
      
      ### INSTALLING LTSpiceXVII

       ### FOR Windows AND MacOS

  1.Download LTspice from [here](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html) 
  
  2.Follow basic installation steps and install LTspice simulatorXVII on your Windows system or Mac.You can download according to your operating system.

   ### FOR LINUX OS
	
   1.LINUX Users have to install WINE from [here](https://wiki.winehq.org/Download) as LTSpice is not directly supported.
   
   2.Similar steps are followed as mentioned for windows to download LTspice setup.
   
   3.Right click on the downloaded setup file and select the option Open With Wine Windows Program Loader.
   
   4.Afterwards basic installation steps are followed.
   ###  SCHEMATICS AND SIMULATIONS

  1.After installation Go to New schematic option on top left and draw circuit schematic using components available on top.
  
  2.Go to ` Edit->Spice Directive’S’ ` to edit text on the schematic. Also provide input voltage as required by clicking right button and then advanced and changing input form as required. Save circuit with extension (.asc).

  3.To open file which is already created,Go to ` File->Open ` (Ctrl+O) and select file with .asc extension.

  4.Go to ` Simulate->Run ` to obtain waveforms.

  5.You can select parameters you want to display or directly click on that part of circuit(to be displayed). 

  6.SPICE NETLIST can be obtained from View->SPICE Netlist.
   


 3.Electric VLSI Design System (for layout and post-layout simulation purpose)
     
   In linux: 
       
   `$ sudo apt-get install electric`
       
   `Y`
		       
  Or directly use  
  ` $ sudo apt-get install –y electric `
  
 `  $ electric `
		       
## STEPS TO CLONE IP ON TO UNIX BASED SYSTEMS AND RUN PRE-LAYOUT SIMULATIONS

`$ sudo apt-get install ngspice`

`$ sudo apt install git`

`$ git clone https://github.com/tanviarora23/vsdbbcud4f ls`

`$ cd vsdbbcud4f$ ls`

`$la`

`$ngspice netlist.cir`

`run`

`display`

`plot a`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5282).png)

`plot en`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5284).png)

`plot y`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5283).png)

`plot pden`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5286).png)

`plot puen`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5285).png)

`plot pi`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5287).png)

`plot po`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5288).png)

`plot out_t` which is to see pad IO

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5289).png)

## Other Simulations

EN=0 ONLY

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5266).png)

EN=1 ONLY

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5267).png)

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5268).png)

## SIMULATIONS IN WINDOWS(NGSPICE AND LTSPICE)


## ltspice
![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5178).png)

## ngspice

1. A

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5177).png)

2. EN

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5175).png)

3.Y

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5176).png)

4.PO

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5171).png)

5.PI

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5172).png)

6.PDEN

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5173).png)

7.PUEN

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5174).png)

8.OUT_T (PAD)

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5169).png)

NOTE : PRELAYOUT SIMULATIONS ARE TESTED FOR osu180nm


## STEPS TO OPEN LAYOUT IN ELECTRIC
            
	    Work in progress . Will update soon
	    
![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/layouts/progress.png)


## STEPS TO RUN POST-LAYOUT SIMULATIONS
            Work in progress . Will update soon.
	    
  

# CONTACT INFORMATION
I.TANVI ARORA,ECE,Deenbandhu Chhotu Ram Universiy of Science and Technology,Murthal,Haryana. tanviarora1058@gmail.com

II.KUNAL GHOSH Director, VSD Corp. Pvt. Ltd. kunalpghosh@gmail.com

III.PHILIPP GÜHRING Software Architect at LibreSilicon Association pg@futureware.at

IV.Dr. GAURAV TRIVEDI Co-Principal Investigator, EICT Academy,
and Associative Professor, EEE Department, IIT Guwahati trivedi@iitg.ac.in
