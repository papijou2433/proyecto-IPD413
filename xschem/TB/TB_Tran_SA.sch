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
N 360 -30 360 -10 {
lab=Vdd}
N 260 110 280 110 {
lab=Vin2}
N 260 60 280 60 {
lab=CLK}
N 260 10 280 10 {
lab=Vin1}
N 480 40 620 40 {
lab=out1}
N 480 80 550 80 {
lab=out2}
N 620 40 620 80 {
lab=out1}
N 550 140 550 160 {
lab=Vss}
N 620 140 620 160 {
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
C {code.sym} -170 -110 0 0 {name=Sim_param only_toplevel=false value=
"
.param Vdd = 1.2
.param VCM = 0.6

"}
C {vsource.sym} -240 270 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {gnd.sym} -240 320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -240 220 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {../sch/strongarm.sym} 340 -10 0 0 {name=x1}
C {code.sym} -290 -110 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} -40 -110 0 0 {name=MOS_param only_toplevel=false value="
** TRANSISTORES NMOS

.param W12 = 0.6u
.param L12 = 0.13u
.param M12 = 1

.param W34 = 0.3u
.param L34 = 0.13u
.param M34 = 1

.param W56 = 0.3u
.param L56 = 0.13u
.param M56 = 1

.param W7  = 0.3u
.param L7  = 0.13u
.param M7  = 1

.param W89 = 0.3u
.param L89 = 0.13u
.param M89 = 1

.param Wab = 0.3u
.param Lab = 0.13u
.param Mab = 1
"}
C {code.sym} -160 50 0 0 {name=Sim_amp spice_ignore=1
only_toplevel=false value="
"
}
C {vsource.sym} -150 270 0 0 {name=Vss value=0 savecurrent=false}
C {gnd.sym} -150 320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -150 220 0 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 150 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 -30 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 260 110 0 0 {name=p5 sig_type=std_logic lab=Vin2}
C {lab_pin.sym} 260 10 0 0 {name=p6 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 260 60 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {code.sym} -280 50 0 0 {name=tran_sim spice_ignore=0 only_toplevel=false value="
.control
.param T = 30n
*.param SimTime = 3*T + 100n
save all
+ @n.x1.xm1.nsg13_lv_nmos[gm]
+ @n.x1.xm2.nsg13_lv_nmos[gm]
+ @n.x1.xm1.nsg13_lv_nmos[ids]
+ @n.x1.xm2.nsg13_lv_nmos[ids]
tran 10p 40n
let gm1 = @n.x1.xm1.nsg13_lv_nmos[gm]
let ids1= @n.x1.xm1.nsg13_lv_nmos[ids]

meas tran Amp_t TRIG AT=15n TARG v(out1) VAL=0.6 CROSS=1
meas tran reg_t TRIG v(out1) VAL=0.6 CROSS=1 TARG v(out1) VAL=0.01 CROSS=1
plot v(out1) v(out2)
plot v(x1.Q) (v(CLK)/2 +0.2)
plot v(x1.P) 
.endc
"}
C {capa.sym} 550 110 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 620 110 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 550 160 0 0 {name=p8 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 620 160 0 0 {name=p9 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 550 80 2 0 {name=p10 sig_type=std_logic lab=out2}
C {lab_pin.sym} 620 40 2 0 {name=p11 sig_type=std_logic lab=out1}
C {vsource.sym} -50 270 0 0 {name=Vin1 value=\{VCM\} savecurrent=false}
C {gnd.sym} -50 320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -50 220 0 0 {name=p12 sig_type=std_logic lab=Vin1}
C {vsource.sym} 60 270 0 0 {name=Vin2 value="dc=\{VCM\} ac=10m" savecurrent=false}
C {gnd.sym} 60 320 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 60 220 0 0 {name=p13 sig_type=std_logic lab=Vin2}
C {vsource.sym} 230 270 0 0 {name=Vclock value="PULSE(0 \{Vdd\} \{T/2\} \{T/20\} \{T/20\} \{T/2\} \{T\})" savecurrent=false}
C {gnd.sym} 230 320 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 230 220 0 0 {name=p14 sig_type=std_logic lab=CLK}
