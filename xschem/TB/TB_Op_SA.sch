v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 300 -280 320 {
lab=GND}
N -280 220 -280 240 {
lab=Vdd}
N -190 300 -190 320 {
lab=GND}
N -190 220 -190 240 {
lab=Vss}
N 320 130 320 150 {
lab=Vss}
N 220 110 240 110 {
lab=in2}
N 220 60 240 60 {
lab=CLK}
N 220 10 240 10 {
lab=Vin1}
N 440 80 550 80 {
lab=out2}
N 680 100 680 120 {
lab=Vss}
N -90 300 -90 320 {
lab=GND}
N -90 220 -90 240 {
lab=Vin1}
N -10 300 -10 320 {
lab=GND}
N 90 300 90 320 {
lab=GND}
N 90 220 90 240 {
lab=CLK}
N 320 -40 320 -10 {
lab=Vdd}
N 680 30 680 40 {
lab=out1}
N 440 40 680 40 {
lab=out1}
N 550 140 550 160 {
lab=Vss}
N -10 220 -10 240 {
lab=in2}
C {code.sym} -170 50 0 0 {name=op_sim spice_ignore=0 only_toplevel=false value="
.control
save all
+ @n.x1.xm3.nsg13_lv_nmos[gm]
+ @n.x1.xm4.nsg13_lv_nmos[gm]
+ @n.x1.xm3.nsg13_lv_nmos[ids]
+ @n.x1.xm4.nsg13_lv_nmos[ids]
*
+ @n.x1.xm8.nsg13_lv_pmos[ids]
op
let id3 = @n.x1.xm3.nsg13_lv_nmos[ids]
let id4 = @n.x1.xm4.nsg13_lv_nmos[ids]
let id8 = @n.x1.xm8.nsg13_lv_pmos[ids]

let gm3 = @n.x1.xm3.nsg13_lv_nmos[gm]
let gm4 = @n.x1.xm4.nsg13_lv_nmos[gm]
print id8 id3 id4
print gm3 gm4
.endc
"}
C {code.sym} -40 -110 0 0 {name=Sim_param only_toplevel=false value=
"
.param Vdd   = 1.8
.param VCM   = 0.9
.param Vstep = 10m
.param Vin2  = VCM-Vstep
.ic V(out1) = 1.8
.ic V(out2) = 1.8
.ic V(x1.common) = 1.8
.ic V(x1.P) = 1.8
.ic V(x1.Q) = 1.8

"}
C {vsource.sym} -280 270 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {gnd.sym} -280 320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -280 220 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {proyecto-IPD413/xschem/sch/strongarm.sym} 300 -10 0 0 {name=x1}
C {code.sym} -170 -110 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} 430 -180 0 0 {name=MOS_param spice_ignore=1
only_toplevel=false value="
** TRANSISTORES NMOS

.param W12 = 5.3u
.param L12 = 0.15u
.param M12 = 1

.param W34 = 0.78u
.param L34 = 0.15u
.param M34 = 1

.param W56 = 0.78u
.param L56 = 0.15u
.param M56 = 1

.param W7  = 4u
.param L7  = 0.15u
.param M7  = 1

.param W89 = 0.5u
.param L89 = 0.15u
.param M89 = 1

.param Wab = 0.5u
.param Lab = 0.15u
.param Mab = 1
"}
C {vsource.sym} -190 270 0 0 {name=Vss value=0 savecurrent=false}
C {gnd.sym} -190 320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -190 220 0 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 320 150 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 320 -40 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 220 110 0 0 {name=p5 sig_type=std_logic lab=in2}
C {lab_pin.sym} 220 10 0 0 {name=p6 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 220 60 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {capa.sym} 550 110 0 0 {spiceignore=1
name=C1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 680 70 0 0 {name=C2
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -90 270 0 0 {name=Vin1 value=\{VCM\} savecurrent=false}
C {gnd.sym} -90 320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -90 220 0 0 {name=p12 sig_type=std_logic lab=Vin1}
C {vsource.sym} -10 270 0 0 {name=Vin2 value=\{Vin2\} savecurrent=false}
C {gnd.sym} -10 320 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -10 220 0 0 {name=p13 sig_type=std_logic lab=in2}
C {vsource.sym} 90 270 0 0 {name=Vclock value="dc=0.9  ac=1.8" savecurrent=false}
C {gnd.sym} 90 320 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 90 220 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 680 120 0 0 {name=p16 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 550 160 0 0 {name=p17 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 680 30 2 0 {name=p19 sig_type=std_logic lab=out1}
C {lab_pin.sym} 550 80 2 0 {name=p20 sig_type=std_logic lab=out2}
C {code.sym} -30 50 0 0 {name=MOS_param_2.5GHz_fingers spice_ignore=0

 only_toplevel=false value="
** TRANSISTORES NMOS

.param W12 = 2.5u
.param L12 = 0.5u
.param M12 = 8
.param F12 = 5

.param W34 = 2u
.param L34 = 0.13u
.param M34 = 4
.param F34 = 2

.param W56 = 3.5u
.param L56 = 0.13u
.param M56 = 1
.param F56 = 7

.param W7  = 2.5u
.param L7  = 0.13u
.param M7  = 6
.param F7  = 5

.param W89 = 2u
.param L89 = 0.13u
.param M89 = 1
.param F89 = 4

.param Wab = 3u
.param Lab = 0.13u
.param Mab = 1
.param Fab = 6
"}
