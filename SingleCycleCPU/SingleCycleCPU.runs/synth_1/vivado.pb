
{
Command: %s
53*	vivadotcl2J
6synth_design -top SingleCycleCPU -part xc7k70tfbv676-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-349h px? 
?
%s*synth2?
sStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 470.602 ; gain = 176.047
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2"
SingleCycleCPU2default:default2
 2default:default2s
]E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/SingleCycleCPU.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ControlUnit2default:default2
 2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
482default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ControlUnit2default:default2
 2default:default2
12default:default2
12default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
PC2default:default2
 2default:default2g
QE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/PC.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2default:default2
 2default:default2
22default:default2
12default:default2g
QE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/PC.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
InstructionMemory2default:default2
 2default:default2v
`E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/InstructionMemory.v2default:default2
232default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2Y
EE:/ComputerLogicDesign/MIPS/SingleCycleCPU/test/test_instructions.txt2default:default2v
`E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/InstructionMemory.v2default:default2
332default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
InstructionMemory2default:default2
 2default:default2
32default:default2
12default:default2v
`E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/InstructionMemory.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
RegisterFile2default:default2
 2default:default2q
[E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/RegisterFile.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
RegisterFile2default:default2
 2default:default2
42default:default2
12default:default2q
[E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/RegisterFile.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2h
RE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ALU.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2h
RE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ALU.v2default:default2
362default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
52default:default2
12default:default2h
RE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ALU.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

DataMemory2default:default2
 2default:default2o
YE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/DataMemory.v2default:default2
232default:default8@Z8-6157h px? 
?
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2
RAM_reg2default:defaultZ8-4767h px? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2?
~	1: RAM has multiple writes via different ports in same process. If RAM inferencing intended, write to one port per process. 
2default:defaulth p
x
? 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
? 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
? 
S
%s
*synth2;
'RAM "RAM_reg" dissolved into registers
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

DataMemory2default:default2
 2default:default2
62default:default2
12default:default2o
YE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/DataMemory.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
ImmediateExtend2default:default2
 2default:default2t
^E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ImmediateExtend.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
ImmediateExtend2default:default2
 2default:default2
72default:default2
12default:default2t
^E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ImmediateExtend.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
Mux4_32bitsPC2default:default2
 2default:default2r
\E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_32bitsPC.v2default:default2
232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2r
\E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_32bitsPC.v2default:default2
332default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Mux4_32bitsPC2default:default2
 2default:default2
82default:default2
12default:default2r
\E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_32bitsPC.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
Mux4_5bitsWReg2default:default2
 2default:default2s
]E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_5bitsWReg.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
Mux4_5bitsWReg2default:default2
 2default:default2
92default:default2
12default:default2s
]E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_5bitsWReg.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Mux4_32bits2default:default2
 2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_32bits.v2default:default2
22default:default8@Z8-6157h px? 
?
default block is never used226*oasys2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_32bits.v2default:default2
122default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mux4_32bits2default:default2
 2default:default2
102default:default2
12default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux4_32bits.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Mux2_32bits2default:default2
 2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux2_32bits.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mux2_32bits2default:default2
 2default:default2
112default:default2
12default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/Mux2_32bits.v2default:default2
22default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
332default:default2
in12default:default2
322default:default2
Mux2_32bits2default:default2s
]E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/SingleCycleCPU.v2default:default2
1672default:default8@Z8-689h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
SingleCycleCPU2default:default2
 2default:default2
122default:default2
12default:default2s
]E:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/SingleCycleCPU.v2default:default2
232default:default8@Z8-6155h px? 
~
!design %s has unconnected port %s3331*oasys2
ControlUnit2default:default2
sign2default:defaultZ8-3331h px? 
?
%s*synth2?
sFinished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 533.805 ; gain = 239.250
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 533.805 ; gain = 239.250
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7k70tfbv676-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 533.805 ; gain = 239.250
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7k70tfbv676-12default:defaultZ21-403h px? 
?
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
ALUOp2default:defaultZ8-5587h px? 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ALUOp2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
RegDst2default:defaultZ8-5546h px? 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
PCSrc2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
RegWre2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ALUSrcA2default:defaultZ8-5546h px? 
?
!inferring latch for variable '%s'327*oasys2
	PCWre_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
ALUSrcA_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
ALUSrcB_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

RegWre_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mRD_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mWR_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

ExtSel_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
DBDataSrc_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

RegDst_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	PCSrc_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	ALUOp_reg2default:default2p
ZE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ControlUnit.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

result_reg2default:default2h
RE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/new/ALU.v2default:default2
322default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 558.699 ; gain = 264.145
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 64    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 36    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 60    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      2 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 92    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 48    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
C
%s
*synth2+
Module SingleCycleCPU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
@
%s
*synth2(
Module ControlUnit 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      2 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
7
%s
*synth2
Module PC 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module InstructionMemory 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 3     
2default:defaulth p
x
? 
A
%s
*synth2)
Module RegisterFile 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 31    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 31    
2default:defaulth p
x
? 
8
%s
*synth2 
Module ALU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DataMemory 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 64    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 36    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 60    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 58    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 48    
2default:defaulth p
x
? 
D
%s
*synth2,
Module ImmediateExtend 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module Mux4_32bitsPC 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module Mux4_5bitsWReg 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module Mux4_32bits 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module Mux2_32bits 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
ALUOp2default:defaultZ8-5587h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[31]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[30]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[29]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[28]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[27]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[26]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[25]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[24]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[23]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[22]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[21]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[20]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[19]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[18]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[17]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[16]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
	DAddr[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
DAddr[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
DAddr[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
DAddr[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

DataMemory2default:default2
DAddr[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[31]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[30]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[29]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[28]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[27]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[26]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[25]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[24]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[23]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[22]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[21]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[20]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[19]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[18]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[17]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[16]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
	IAddr[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
IAddr[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
IAddr[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2%
InstructionMemory2default:default2
IAddr[7]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
ControlUnit2default:default2
sign2default:defaultZ8-3331h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:18 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
o
%s*synth2W
C+------------------+------------+---------------+----------------+
2default:defaulth px? 
p
%s*synth2X
D|Module Name       | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
o
%s*synth2W
C+------------------+------------+---------------+----------------+
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D|InstructionMemory | p_0_out    | 128x8         | LUT            | 
2default:defaulth px? 
p
%s*synth2X
D+------------------+------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:21 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    43|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    79|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    94|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    65|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    99|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   457|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  1684|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   540|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |   212|
2default:defaulth px? 
D
%s*synth2,
|11    |FDCE   |  1023|
2default:defaulth px? 
D
%s*synth2,
|12    |FDRE   |   512|
2default:defaulth px? 
D
%s*synth2,
|13    |LD     |    73|
2default:defaulth px? 
D
%s*synth2,
|14    |IBUF   |     2|
2default:defaulth px? 
D
%s*synth2,
|15    |OBUF   |   271|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+--------------------+------------------+------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|      |Instance            |Module            |Cells |
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+--------------------+------------------+------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|1     |top                 |                  |  5156|
2default:defaulth p
x
? 
d
%s
*synth2L
8|2     |  InstructionMemory |InstructionMemory |    32|
2default:defaulth p
x
? 
d
%s
*synth2L
8|3     |  ALU               |ALU               |   419|
2default:defaulth p
x
? 
d
%s
*synth2L
8|4     |  ControlUnit       |ControlUnit       |   264|
2default:defaulth p
x
? 
d
%s
*synth2L
8|5     |  DataMemory        |DataMemory        |  1472|
2default:defaulth p
x
? 
d
%s
*synth2L
8|6     |  Mux_ALU_inA       |Mux2_32bits       |    85|
2default:defaulth p
x
? 
d
%s
*synth2L
8|7     |  Mux_ALU_inB       |Mux2_32bits_0     |    33|
2default:defaulth p
x
? 
d
%s
*synth2L
8|8     |  Mux_WriteData     |Mux4_32bits       |    32|
2default:defaulth p
x
? 
d
%s
*synth2L
8|9     |  Mux_WriteReg      |Mux4_5bitsWReg    |     5|
2default:defaulth p
x
? 
d
%s
*synth2L
8|10    |  Mux_nextIAddr     |Mux4_32bitsPC     |    31|
2default:defaulth p
x
? 
d
%s
*synth2L
8|11    |  PC                |PC                |   438|
2default:defaulth p
x
? 
d
%s
*synth2L
8|12    |  RegisterFile      |RegisterFile      |  2070|
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+--------------------+------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 67 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 778.348 ; gain = 483.793
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
8682default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
807.7972default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 73 instances were transformed.
  LD => LDCE: 73 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
672default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:292default:default2
00:00:302default:default2
807.7972default:default2
513.2422default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
807.7972default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2m
YE:/ComputerLogicDesign/MIPS/SingleCycleCPU/SingleCycleCPU.runs/synth_1/SingleCycleCPU.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
rExecuting : report_utilization -file SingleCycleCPU_utilization_synth.rpt -pb SingleCycleCPU_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Oct 26 20:50:42 20212default:defaultZ17-206h px? 


End Record