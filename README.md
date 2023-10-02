# DATASHEET
 ## vsdbbcud4f
   Bi-directional Buffer with Non-Inverting CMOS Input and Gated Pull-down and Pull-up,Strength 4mA @ 3.3V,Normal,High noise (Fast Speed)
   
 ## DESCRIPTION OF VSDBBCUD4F
   VSDBBCUD4F is a GPIO(General Purpose Input Output) IP. It suits maximum frequency of approximately 2.538 MHz. Data flow is bidirectional i.e. from 'Input TO Output' or 
   'Output TO Input' depends on user’s choice of Enable pin.

 ## SYMBOL
 
![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/pin.png)
![pin](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/d7b0cc6e-0167-4d69-879b-a3e51b6d68c6)


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
![Screenshot (4609)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/3ffc03a6-06b2-476d-ada0-191e297a5db4)


## CIRCUIT DIAGRAM

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5179).png)
![Screenshot (5179)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/f40daf5d-7ef7-4650-aff2-cbad841ace77)

![Screenshot (5180)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/eb763f06-c204-4a0f-86e4-67a3a38fb70f)


![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/IP%20Design/Images/Screenshot%20(5180).png)

## Typical Performance Characteristics

### Target specifications can be found [here](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Target%20Specifications/VSDBBCUD4F.pdf)

#### Target Truth Table is as follows:
![specifications](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/1e8ed123-4e85-4e79-a4dd-a0721681362b)


![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5523).png)

### Achieved Specifications of IP are as follows:

### EN=0
![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5524).png)
![image](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/c7c36032-49c8-4c46-a612-d49071e9198d)


### EN=1
![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5525).png)
![image](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/53af37d9-a3a0-403c-ba2b-d015b0a4a9cb)



## Future Work 
      ISSUES:
	      1. Parasitic Extraction needs to be done for perfect Post Layout Simulations.
	      2. Placing and Routing (PNR) is pending (to be taken care of by VSD Corp. Pvt. Ltd.) 
   Trying to maximize frequency of GPIO as currently it suits maximum frequency of approximately 2.538 MHz.


# IP USAGE

## TOOLS NEEDED TO USE THIS IP
 
 ## ngspice

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


   ## 2. LTspiceXVII
   IT is used to simulate the General Purpose Input Output(GPIO). LtspiceXVII is a spice simulation software produced by semiconductor manufacturer Analog Devices.         Schematic of circuits and the waveforms can be obtained easily from this tool.
      
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
   


 ## Electric VLSI Design System (for layout and post-layout simulation purpose)
     
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

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5367).png)
![Screenshot (5367)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/04309552-dd06-48e2-8ed1-3450e9a1c6d7)

`plot en`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5371).png)
![Screenshot (5371)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/628ba8b1-d139-456c-8942-fdfba457af78)


`plot y`
#### Y IS EXPECTED Y=1.8V WHEN EN=1 AND Y=A WHEN EN=0

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5377).png)
![Screenshot (5377)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/3eb8c3c1-f266-4bbf-9a11-78471a2f69f0)


`plot pden`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5373).png)
![Screenshot (5373)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/0d40248b-117b-42cd-8de6-ea526acde421)


`plot puen`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5376).png)
![Screenshot (5376)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/5ad099ca-388f-41a3-b3ae-6eb9736db173)


`plot pi`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5374).png)
![Screenshot (5374)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/bbf3abb8-97c2-42ca-91ba-e8aa74d6e10e)


`plot po`
#### PO IS EXPECTED TO BE RECIPROCAL OF PI

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5375).png)
![Screenshot (5375)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/f92c7c95-2600-424e-99d3-0e44746d730a)


`plot out_t` which is to see pad IO

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5372).png)
![Screenshot (5372)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/2a6f25f8-f91c-4412-9718-0d9d605b6ac5)

## Other Simulations

EN=0 ONLY

#### Y IS EXPECTED TO FOLLOW A I.E. Y=A WHEN EN=0

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5370).png)
![Screenshot (5370)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/f158f3d6-fafb-494e-b4e9-5c371e6a657b)


EN=1 ONLY

`plot en`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5380).png)
![Screenshot (5380)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/6c84c055-ecb3-45f3-a7ca-abca37cd66c7)


`plot a`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5387).png)
![Screenshot (5387)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/16141b58-5a97-4dda-b7fa-07857564b557)


`plot y`

#### Y IS EXPECTED TO BE 1.8 I.E. Y=1.8V WHEN EN=1 

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5381).png)
![Screenshot (5381)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/665f28a9-0bcd-4719-9c84-076983e03eba)


`plot pden`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5382).png)
![Screenshot (5382)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/3cff697b-5d76-4843-b93b-3165b6af9192)

`plot puen`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5383).png)
![Screenshot (5383)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/3357e7ce-e40c-40e2-bc35-37e7c3df6154)


`plot pi`

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5384).png)
![Screenshot (5384)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/b7dc976e-5ace-457c-9280-e2d736ce4bf1)


`plot po`

#### PO IS EXPECTED TO BE RECIPROCAL OF PI

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/Screenshot%20(5385).png)
![Screenshot (5385)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/0650d372-3f31-47d5-842a-7719a8a547ea)


## SIMULATIONS IN WINDOWS(NGSPICE AND LTSPICE)


## ltspice
![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5178).png)
![Screenshot (5178)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/2544fa07-e91d-4b1d-b5db-f7af8c8a2b84)


## ngspice

1. A

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5177).png)
![Screenshot (5177)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/08552d2b-7f63-41de-90aa-5822f8df0c3e)


2. EN

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5175).png)
![Screenshot (5175)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/6ef16888-ca5c-4e7d-adec-bfae701983d0)


3.Y

#### Y IS EXPECTED Y=1.8V WHEN EN=1 AND Y=A WHEN EN=0

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5176).png)
![Screenshot (5176)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/af3754e8-9fc1-4261-961b-1de6a4fab264)


4.PO

#### PO IS EXPECTED TO BE RECIPROCAL OF PI

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5171).png)
![Screenshot (5171)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/6fa24c9d-25aa-478a-87ef-3e07c09026de)


5.PI

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5172).png)
![Screenshot (5172)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/18873a21-82d5-465a-a43b-a4c62fadd932)


6.PDEN

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5173).png)
![Screenshot (5173)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/90855600-d2c4-4169-ab30-13b829d637e9)


7.PUEN

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5174).png)
![Screenshot (5174)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/b74fb382-2684-4e9f-bec1-0db0ca806d45)


8.OUT_T (PAD)

![](https://github.com/tanu2303/BidirectionalBuffer-GPIO/blob/master/6july/Screenshot%20(5169).png)
![Screenshot (5169)](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/65faba9c-0a7d-4991-94ae-ff190266632e)


NOTE : PRELAYOUT SIMULATIONS ARE TESTED FOR osu180nm


## STEPS TO OPEN LAYOUT IN MAGIC
                
# LAYOUT
The layout of  GPIO is obtained using LCLayout,Magic and cleared the extraction warnings, errors.Actually netlist was divided into three cells: 
Left,Middle,Right.
Left cell includes pull up(PUEN) and pull down(PDEN) part. 
Middle part includes PI,PO and Y. 
Right part includes A,EN.

### LEFT CELL: 
Left cell includes pull up(PUEN) and pull down(PDEN) part. 

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/L4.png)
![L4](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/240f48fd-6e79-4036-9c9a-a8731996b010)


### MIDDLE CELL:
Middle part includes PI,PO and Y.

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/L5.png)
![L5](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/8351091e-246c-44ce-a740-352dc17911a3)


### RIGHT CELL:
Right part includes A,EN.

![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/L6.png)
![L6](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/1f2f5ba9-6cd8-498e-b2ac-109607ed0821)


IP:
![](https://github.com/tanviarora23/vsdbbcud4f/blob/master/Layout/Images/layout.jpeg)
![WhatsApp Image 2020-07-11 at 8 28 59 PM](https://github.com/tanviarora23/vsdbbcud4f/assets/66714549/df3ed7e4-fc21-4853-9e1f-fd596240c3ef)

The layout of the cell measures 242.00 microns * 70.00 microns i.e. 16940 units^2.
    

# CONTACT INFORMATION
I.TANVI ARORA,ECE,Deenbandhu Chhotu Ram Universiy of Science and Technology,Murthal,Haryana. tanviarora1058@gmail.com

II.KUNAL GHOSH Director, VSD Corp. Pvt. Ltd. kunalpghosh@gmail.com

III.PHILIPP GÜHRING Software Architect at LibreSilicon Association pg@futureware.at

IV.Dr. GAURAV TRIVEDI Co-Principal Investigator, EICT Academy,
and Associative Professor, EEE Department, IIT Guwahati trivedi@iitg.ac.in
