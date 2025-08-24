v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 300 -240 320 {
lab=GND}
N -240 220 -240 240 {
lab=Vdd}
N -150 300 -150 320 {
lab=GND}
N -150 220 -150 240 {
lab=Vss}
N 360 130 360 150 {
lab=Vss}
N 260 110 280 110 {
lab=in2}
N 260 60 280 60 {
lab=CLK}
N 260 10 280 10 {
lab=Vin1}
N 480 80 590 80 {
lab=out2}
N 720 100 720 120 {
lab=Vss}
N -50 300 -50 320 {
lab=GND}
N -50 220 -50 240 {
lab=Vin1}
N 60 390 60 410 {
lab=GND}
N 60 220 60 250 {
lab=in2}
N 210 400 210 420 {
lab=GND}
N 210 320 210 340 {
lab=CLK}
N 360 -40 360 -10 {
lab=Vdd}
N 720 30 720 40 {
lab=out1}
N 480 40 720 40 {
lab=out1}
N 590 140 590 160 {
lab=Vss}
N 60 310 60 330 {
lab=#net1}
C {code.sym} 0 -110 0 0 {name=Sim_param only_toplevel=false value=
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
C {vsource.sym} -240 270 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {gnd.sym} -240 320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -240 220 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {../sch/strongarm.sym} 340 -10 0 0 {name=x1}
C {code.sym} -130 -110 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} 0 50 0 0 {name=MOS_param only_toplevel=false value="
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
C {vsource.sym} -150 270 0 0 {name=Vss value=0 savecurrent=false}
C {gnd.sym} -150 320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -150 220 0 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 150 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 -40 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 260 110 0 0 {name=p5 sig_type=std_logic lab=in2}
C {lab_pin.sym} 260 10 0 0 {name=p6 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 260 60 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {code.sym} -130 40 0 0 {name=Tran_Sim spice_ignore=0 only_toplevel=false value="

.param T = 1n
.control
*.param SimTime = 3*T + 100n
save all
+ @n.x1.xm3.nsg13_lv_nmos[vgs]
+ @n.x1.xm4.nsg13_lv_nmos[vgs]
+ @n.x1.xm5.nsg13_lv_pmos[vgs]
+ @n.x1.xm6.nsg13_lv_pmos[vgs]
+ @n.x1.xm10.nsg13_lv_pmos[vgs]
+ @n.x1.xm11.nsg13_lv_pmos[vgs]
*
+ @n.x1.xm10.nsg13_lv_pmos[vgt]
+ @n.x1.xm10.nsg13_lv_pmos[vth]
*
+ @n.x1.xm1.nsg13_lv_nmos[ids]
+ @n.x1.xm2.nsg13_lv_nmos[ids]
+ @n.x1.xm3.nsg13_lv_nmos[ids]
+ @n.x1.xm10.nsg13_lv_pmos[ids]
+ @n.x1.xm11.nsg13_lv_pmos[ids]

tran 1p 3n
let vgs3 = @n.x1.xm3.nsg13_lv_nmos[vgs]
let vgs4 = @n.x1.xm4.nsg13_lv_nmos[vgs]
let vgs5 = @n.x1.xm5.nsg13_lv_pmos[vgs]
let vgs6 = @n.x1.xm6.nsg13_lv_pmos[vgs]
let vgsa = @n.x1.xm10.nsg13_lv_pmos[vgs]
let vgsb = @n.x1.xm11.nsg13_lv_pmos[vgs]

let vgta = @n.x1.xm10.nsg13_lv_pmos[vgt]
let vtha = @n.x1.xm10.nsg13_lv_pmos[vth]

let id1 = @n.x1.xm1.nsg13_lv_nmos[ids]
let id2 = @n.x1.xm2.nsg13_lv_nmos[ids]
let id10 = @n.x1.xm10.nsg13_lv_pmos[ids]
let id11 = @n.x1.xm11.nsg13_lv_pmos[ids]

meas tran Amp_t TRIG AT=15n TARG v(out1) VAL=0.9 CROSS=1
meas tran reg_t TRIG v(out1) VAL=0.9 CROSS=1 TARG v(out1) VAL=0.01 CROSS=1
meas tran Energy INTEG Pot from=15n to=25n

plot v(x1.Q) v(x1.P) v(clk)
plot v(x1.common) v(clk)
plot v(out1) v(out2)
.endc
"}
C {capa.sym} 590 110 0 0 {spiceignore=1
name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 720 70 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -50 270 0 0 {name=Vin1 value=\{VCM\} savecurrent=false}
C {gnd.sym} -50 320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -50 220 0 0 {name=p12 sig_type=std_logic lab=Vin1}
C {vsource.sym} 60 360 0 0 {name=Vin2 value=\{Vin2\} savecurrent=false}
C {gnd.sym} 60 410 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 60 220 0 0 {name=p13 sig_type=std_logic lab=in2}
C {vsource.sym} 210 370 0 0 {name=Vclock value="PULSE(0 \{Vdd\} \{T/2\} \{T/20\} \{T/20\} \{T/2\} \{T\})" savecurrent=false}
C {gnd.sym} 210 420 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 210 320 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 720 120 0 0 {name=p16 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 590 160 0 0 {name=p17 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 720 30 2 0 {name=p19 sig_type=std_logic lab=out1}
C {lab_pin.sym} 590 80 2 0 {name=p20 sig_type=std_logic lab=out2}
C {vsource.sym} 60 280 0 0 {name=Vstep value="PULSE(0 \{15*vstep\} \{3*T/2\} \{T/20\} \{T/20\} \{T/2\} \{T\})" savecurrent=false}
