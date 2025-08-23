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
lab=Vin2}
N 260 60 280 60 {
lab=CLK}
N 260 10 280 10 {
lab=Vin1}
N 480 80 550 80 {
lab=out2}
N 620 180 620 200 {
lab=Vss}
N 700 30 700 50 {
lab=Vss}
N -50 300 -50 320 {
lab=GND}
N -50 220 -50 240 {
lab=Vin1}
N 60 300 60 320 {
lab=GND}
N 60 220 60 240 {
lab=Vin2}
N 230 300 230 320 {
lab=GND}
N 230 220 230 240 {
lab=CLK}
N 360 -40 360 -10 {
lab=Vdd}
N 660 -30 700 -30 {
lab=nout1}
N 700 -40 700 -30 {
lab=nout1}
N 540 -30 580 -30 {
lab=out1}
N 540 -30 540 40 {
lab=out1}
N 480 40 540 40 {
lab=out1}
N 620 0 620 10 {
lab=#net1}
N 620 -80 620 -60 {
lab=Vdd}
N 550 80 550 150 {
lab=out2}
N 550 150 580 150 {
lab=out2}
N 660 150 700 150 {
lab=nout2}
N 700 140 700 150 {
lab=nout2}
N 700 210 700 230 {
lab=Vss}
N 620 100 620 120 {
lab=Vdd}
C {code.sym} -10 -110 0 0 {name=Sim_param only_toplevel=false value=
"
.param Vdd   = 1.8
.param VCM   = 0.9
.param Vstep = 1m
.param Vin2  = VCM-Vstep
.ic V(out1) = 0
.ic V(out2) = 0
.ic V(x1.common) = 0
.ic V(x1.P) = 0
.ic V(x1.Q) = 0

"}
C {vsource.sym} -240 270 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {gnd.sym} -240 320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -240 220 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {../sch/strongarm.sym} 340 -10 0 0 {name=x1}
C {code.sym} -140 -110 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} -10 50 0 0 {name=MOS_param only_toplevel=false value="
** TRANSISTORES NMOS

.param W12 = 1u
.param L12 = 0.2u
.param M12 = 1

.param W34 = 1u
.param L34 = 0.2u
.param M34 = 1

.param W56 = 1u
.param L56 = 0.2u
.param M56 = 1

.param W7  = 1u
.param L7  = 0.2u
.param M7  = 1

.param W89 = 1u
.param L89 = 0.2u
.param M89 = 1

.param Wab = 1u
.param Lab = 0.2u
.param Mab = 1
"}
C {vsource.sym} -150 270 0 0 {name=Vss value=0 savecurrent=false}
C {gnd.sym} -150 320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -150 220 0 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 150 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 -40 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 260 110 0 0 {name=p5 sig_type=std_logic lab=Vin2}
C {lab_pin.sym} 260 10 0 0 {name=p6 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 260 60 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {code.sym} -130 50 0 0 {name=Tran_Sim spice_ignore=0 only_toplevel=false value="

.param T = 10n
.control
*.param SimTime = 3*T + 100n
save all
+ @n.x1.xm1.nsg13_lv_nmos[gm]
+ @n.x1.xm1.nsg13_lv_nmos[ids]

+ @n.x1.xm2.nsg13_lv_nmos[ids]
+ @n.x1.xm2.nsg13_lv_nmos[gm]

+ @n.x1.xm3.nsg13_lv_nmos[ids]

+ @n.x1.xm5.nsg13_lv_pmos[ids]
+ @n.x1.xm5.nsg13_lv_pmos[vds]
+ @n.x1.xm5.nsg13_lv_pmos[vgt]

+ @n.x1.xm6.nsg13_lv_pmos[ids]
+ @n.x1.xm6.nsg13_lv_pmos[vds]

+ @n.x1.xm7.nsg13_lv_nmos[ids]

+ @n.x1.xm8.nsg13_lv_pmos[ids]

+ @n.x1.xm10.nsg13_lv_pmos[vgt]


tran 10p 25n
let gm1  = @n.x1.xm1.nsg13_lv_nmos[gm]
let ids1 = @n.x1.xm1.nsg13_lv_nmos[ids]
let ids5 = @n.x1.xm5.nsg13_lv_pmos[ids]
let ids8 = @n.x1.xm8.nsg13_lv_pmos[ids]

meas tran Amp_t TRIG AT=15n TARG v(out1) VAL=0.9 CROSS=1
meas tran reg_t TRIG v(out1) VAL=0.9 CROSS=1 TARG v(out1) VAL=0.01 CROSS=1
meas tran Energy INTEG Pot from=15n to=25n
*plot v(x1.Q) 
*plot v(x1.test) 
*plot v(x1.P)
plot ids5 ids8
plot v(x1.vop) v(x1.voq)
.endc
"}
C {capa.sym} 700 180 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 700 0 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 620 200 0 0 {name=p8 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 940 -120 0 0 {name=p9 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 700 140 2 0 {name=p10 sig_type=std_logic lab=nout2}
C {lab_pin.sym} 700 -40 2 0 {name=p11 sig_type=std_logic lab=nout1}
C {vsource.sym} -50 270 0 0 {name=Vin1 value=\{VCM\} savecurrent=false}
C {gnd.sym} -50 320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -50 220 0 0 {name=p12 sig_type=std_logic lab=Vin1}
C {vsource.sym} 60 270 0 0 {name=Vin2 value=\{Vin2\} savecurrent=false}
C {gnd.sym} 60 320 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 60 220 0 0 {name=p13 sig_type=std_logic lab=Vin2}
C {vsource.sym} 230 270 0 0 {name=Vclock value="PULSE(0 \{Vdd\} \{T/2\} \{T/40\} \{T/40\} \{T/2\} \{T\})" savecurrent=false}
C {gnd.sym} 230 320 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 230 220 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {../sch/inv_lv.sym} 620 -30 0 0 {name=x2}
C {lab_pin.sym} 620 -80 0 0 {name=p15 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 700 50 0 0 {name=p16 sig_type=std_logic lab=Vss}
C {../sch/inv_lv.sym} 620 150 0 0 {name=x3}
C {lab_pin.sym} 700 230 0 0 {name=p17 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 620 100 0 0 {name=p18 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 540 40 2 0 {name=p19 sig_type=std_logic lab=out1}
C {lab_pin.sym} 550 80 2 0 {name=p20 sig_type=std_logic lab=out2}
