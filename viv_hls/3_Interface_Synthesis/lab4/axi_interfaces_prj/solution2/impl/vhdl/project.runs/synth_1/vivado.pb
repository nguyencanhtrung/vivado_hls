
�
Command: %s
53*	vivadotcl2j
Vsynth_design -top axi_interfaces -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context2default:defaultZ4-113h px
7
Starting synth_design
149*	vivadotclZ4-321h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k160t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k160t2default:defaultZ17-349h px
�
�The version limit for your license is '%s' and will expire in %s days. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
519*common2
2016.062default:default2
12default:defaultZ17-1223h px
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1132.867 ; gain = 178.840 ; free physical = 9541 ; free virtual = 36666
2default:defaulth px
�
synthesizing module '%s'638*oasys2"
axi_interfaces2default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces.vhd2default:default2
882default:default8@Z8-638h px
m
%s*synth2X
D	Parameter C_S_AXI_AXILITES_ADDR_WIDTH bound to: 5 - type: integer 
2default:defaulth px
n
%s*synth2Y
E	Parameter C_S_AXI_AXILITES_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth px
�
"Detected attribute (* %s = "%s" *)3982*oasys2 
fsm_encoding2default:default2
none2default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces.vhd2default:default2
1092default:default8@Z8-5534h px
d
%s*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 5 - type: integer 
2default:defaulth px
e
%s*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth px
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys21
axi_interfaces_AXILiteS_s_axi2default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces_AXILiteS_s_axi.vhd2default:default2
122default:default23
axi_interfaces_AXILiteS_s_axi_U2default:default21
axi_interfaces_AXILiteS_s_axi2default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces.vhd2default:default2
2092default:default8@Z8-3491h px
�
synthesizing module '%s'638*oasys21
axi_interfaces_AXILiteS_s_axi2default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces_AXILiteS_s_axi.vhd2default:default2
682default:default8@Z8-638h px
d
%s*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 5 - type: integer 
2default:defaulth px
e
%s*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth px
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ACLK_EN2default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces_AXILiteS_s_axi.vhd2default:default2
1512default:default8@Z8-614h px
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ACLK_EN2default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces_AXILiteS_s_axi.vhd2default:default2
2022default:default8@Z8-614h px
�
%done synthesizing module '%s' (%s#%s)256*oasys21
axi_interfaces_AXILiteS_s_axi2default:default2
12default:default2
12default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces_AXILiteS_s_axi.vhd2default:default2
682default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
axi_interfaces2default:default2
22default:default2
12default:default2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces.vhd2default:default2
882default:default8@Z8-256h px
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1173.250 ; gain = 219.223 ; free physical = 9498 ; free virtual = 36623
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1173.250 ; gain = 219.223 ; free physical = 9497 ; free virtual = 36623
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
T
Loading part %s157*device2$
xc7k160tfbg484-12default:defaultZ21-403h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
;

Processing XDC Constraints
244*projectZ1-262h px
:
Initializing timing engine
348*projectZ1-569h px
�
Parsing XDC File [%s]
179*designutils2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces.xdc2default:defaultZ20-179h px
�
Finished Parsing XDC File [%s]
178*designutils2�
�/home/ctnguyen/work/tut_vivadohls/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution2/impl/vhdl/axi_interfaces.xdc2default:defaultZ20-178h px
E
&Completed Processing XDC Constraints

245*projectZ1-263h px
{
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.042default:default2
00:00:00.042default:default2
1472.6092default:default2
0.0002default:default2
91912default:default2
363472default:defaultZ17-722h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 1472.613 ; gain = 518.586 ; free physical = 9188 ; free virtual = 36344
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
S
%s*synth2>
*Start Loading Part and Timing Information
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Loading part: xc7k160tfbg484-1
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 1472.613 ; gain = 518.586 ; free physical = 9188 ; free virtual = 36344
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
W
%s*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 1472.613 ; gain = 518.586 ; free physical = 9188 ; free virtual = 36344
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	AWREADY_t2default:default2
32default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
WREADY_t2default:default2
32default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
BVALID2default:default2
32default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	ARREADY_t2default:default2
32default:default2
52default:defaultZ8-5544h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
RVALID_t2default:default2
32default:default2
52default:defaultZ8-5544h px
�
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
exitcond_fu_441_p22default:defaultZ8-5546h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 1472.613 ; gain = 518.586 ; free physical = 9187 ; free virtual = 36342
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit       Adders := 8     
2default:defaulth px
W
%s*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 14    
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 17    
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Finished RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
V
%s*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Hierarchical RTL Component report 
2default:defaulth px
@
%s*synth2+
Module axi_interfaces 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit       Adders := 8     
2default:defaulth px
W
%s*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 10    
2default:defaulth px
O
%s*synth2:
&Module axi_interfaces_AXILiteS_s_axi 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
X
%s*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2m
YPart Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9188 ; free virtual = 36344
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
K
%s*synth26
"Start Cross Boundary Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
+design %s has port %s driven by constant %s3447*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_RRESP[1]2default:default2
02default:defaultZ8-3917h px
�
+design %s has port %s driven by constant %s3447*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_RRESP[0]2default:default2
02default:defaultZ8-3917h px
�
+design %s has port %s driven by constant %s3447*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_BRESP[1]2default:default2
02default:defaultZ8-3917h px
�
+design %s has port %s driven by constant %s3447*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_BRESP[0]2default:default2
02default:defaultZ8-3917h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_AWADDR[4]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[31]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[30]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[29]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[28]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[27]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[26]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[25]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[24]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[23]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[22]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[21]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[20]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[19]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[18]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[17]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[16]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[15]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[14]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[13]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[12]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[11]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_WDATA[10]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WDATA[9]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WDATA[8]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WDATA[6]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WDATA[5]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WDATA[4]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WDATA[3]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WDATA[2]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WSTRB[3]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WSTRB[2]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2+
s_axi_AXILiteS_WSTRB[1]2default:defaultZ8-3331h px
�
!design %s has unconnected port %s3331*oasys2"
axi_interfaces2default:default2,
s_axi_AXILiteS_ARADDR[4]2default:defaultZ8-3331h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Cross Boundary Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9189 ; free virtual = 36344
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Parallel Reinference  : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9189 ; free virtual = 36344
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,
Start Area Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
\i1_reg_213_reg[0] 2default:defaultZ8-3333h px
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
\i1_reg_213_reg[1] 2default:defaultZ8-3333h px
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
\i1_reg_213_reg[2] 2default:defaultZ8-3333h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[4] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[5] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[6] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[8] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[9] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[10] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[11] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[12] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[13] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[14] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[15] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[16] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[17] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[18] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[19] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[20] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[21] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[22] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[23] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[24] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[25] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[26] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[27] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[28] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[29] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[30] 2default:default2
FDE2default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3886h px
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:defaultZ8-3333h px
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/\axi_interfaces_AXILiteS_s_axi_U/rstate_reg[1] 2default:default2
FDS2default:default2C
/\axi_interfaces_AXILiteS_s_axi_U/rstate_reg[0] 2default:defaultZ8-3886h px
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\axi_interfaces_AXILiteS_s_axi_U/wstate_reg[2] 2default:defaultZ8-3333h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\axi_interfaces_AXILiteS_s_axi_U/wstate_reg[2] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\axi_interfaces_AXILiteS_s_axi_U/rstate_reg[1] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[31] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[30] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[29] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[28] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[27] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[26] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[25] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[24] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[23] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[22] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[21] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[20] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[19] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[18] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[17] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[16] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[15] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[14] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[13] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[12] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[11] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2H
4\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[10] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[9] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[8] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[6] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[5] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2G
3\axi_interfaces_AXILiteS_s_axi_U/rdata_data_reg[4] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[16] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[17] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[18] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[19] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[20] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[21] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[22] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[23] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[24] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[25] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[26] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[27] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[28] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[29] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[30] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_0_reg[31] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[16] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[17] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[18] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[19] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[20] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[21] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[22] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[23] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[24] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[25] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[26] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[27] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[28] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[29] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[30] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_1_reg[31] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[16] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[17] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[18] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[19] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[20] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[21] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[22] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[23] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[24] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[25] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[26] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[27] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[28] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[29] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[30] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_2_reg[31] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[16] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[17] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[18] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[19] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[20] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[21] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[22] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[23] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[24] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[25] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[26] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[27] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[28] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[29] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[30] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_3_reg[31] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_4_reg[16] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_4_reg[17] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_4_reg[18] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_4_reg[19] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_4_reg[20] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_4_reg[21] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\acc_4_reg[22] 2default:default2"
axi_interfaces2default:defaultZ8-3332h px
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:24 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9189 ; free virtual = 36344
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Parallel Area Optimization  : Time (s): cpu = 00:00:21 ; elapsed = 00:00:24 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9189 ; free virtual = 36344
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
C
%s*synth2.
Start Timing Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
O
%s*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:32 ; elapsed = 00:00:35 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:35 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Parallel Timing Optimization  : Time (s): cpu = 00:00:32 ; elapsed = 00:00:35 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
�
%s*synth2�
�Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:32 ; elapsed = 00:00:35 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-
Start Technology Mapping
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:35 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
<
%s*synth2'
Start IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
N
%s*synth29
%Start Flattening Before IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
Q
%s*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Start Renaming Generated Instances
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start Rebuilding User Hierarchy
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Start Renaming Generated Ports
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
J
%s*synth25
!Start Handling Custom Attributes
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
G
%s*synth22
Start Renaming Generated Nets
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Start Writing Synthesis Report
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
>
%s*synth2)

Report BlackBoxes: 
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
| |BlackBox name |Instances |
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
>
%s*synth2)

Report Cell Usage: 
2default:defaulth px
A
%s*synth2,
+------+-------+------+
2default:defaulth px
A
%s*synth2,
|      |Cell   |Count |
2default:defaulth px
A
%s*synth2,
+------+-------+------+
2default:defaulth px
A
%s*synth2,
|1     |CARRY4 |    64|
2default:defaulth px
A
%s*synth2,
|2     |LUT1   |     1|
2default:defaulth px
A
%s*synth2,
|3     |LUT2   |   274|
2default:defaulth px
A
%s*synth2,
|4     |LUT3   |    12|
2default:defaulth px
A
%s*synth2,
|5     |LUT4   |    13|
2default:defaulth px
A
%s*synth2,
|6     |LUT5   |     7|
2default:defaulth px
A
%s*synth2,
|7     |LUT6   |    11|
2default:defaulth px
A
%s*synth2,
|8     |FDRE   |   159|
2default:defaulth px
A
%s*synth2,
|9     |FDSE   |     2|
2default:defaulth px
A
%s*synth2,
+------+-------+------+
2default:defaulth px
B
%s*synth2-

Report Instance Areas: 
2default:defaulth px
{
%s*synth2f
R+------+----------------------------------+------------------------------+------+
2default:defaulth px
{
%s*synth2f
R|      |Instance                          |Module                        |Cells |
2default:defaulth px
{
%s*synth2f
R+------+----------------------------------+------------------------------+------+
2default:defaulth px
{
%s*synth2f
R|1     |top                               |                              |   543|
2default:defaulth px
{
%s*synth2f
R|2     |  axi_interfaces_AXILiteS_s_axi_U |axi_interfaces_AXILiteS_s_axi |    83|
2default:defaulth px
{
%s*synth2f
R+------+----------------------------------+------------------------------+------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9178 ; free virtual = 36341
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
q
%s*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 198 warnings.
2default:defaulth px
�
%s*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1472.617 ; gain = 105.387 ; free physical = 9194 ; free virtual = 36358
2default:defaulth px
�
%s*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 1472.617 ; gain = 518.590 ; free physical = 9194 ; free virtual = 36358
2default:defaulth px
?
 Translating synthesized netlist
350*projectZ1-571h px
c
-Analyzing %s Unisim elements for replacement
17*netlist2
642default:defaultZ29-17h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
{
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px
R
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
1402default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:322default:default2
00:00:342default:default2
1472.6172default:default2
447.3672default:default2
91942default:default2
363582default:defaultZ17-722h px
�
�report_utilization: Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.09 . Memory (MB): peak = 1512.625 ; gain = 0.000 ; free physical = 9194 ; free virtual = 36358
*commonh px
}
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jun 29 19:38:56 20162default:defaultZ17-206h px