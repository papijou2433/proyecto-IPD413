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
lab=out2}
N 480 80 550 80 {
lab=out1}
N 620 40 620 80 {
lab=out2}
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
N 150 300 150 320 {
lab=GND}
N 150 220 150 240 {
lab=CLK}
C {code.sym} -170 -110 0 0 {name=Sim_param only_toplevel=false value=
"
.param Vdd = 1.2


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

.param W12 = 1.0u
.param L12 = 0.13u
.param M12 = 1

.param W34 = 1.0u
.param L34 = 0.13u
.param M34 = 1

.param W56 = 1.0u
.param L56 = 0.13u
.param M56 = 1

.param W7  = 1.0u
.param L7  = 0.13u
.param M7  = 1

.param W89 = 1.0u
.param L89 = 0.13u
.param M89 = 1

.param Wab = 1.0u
.param Lab = 0.13u
.param Mab = 1
"}
C {code.sym} -290 50 0 0 {name=op_sim spice_ignore=0 only_toplevel=false value="

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
C {code.sym} -30 50 0 0 {name=tran_sim spice_ignore=0 only_toplevel=false value="
.control
.param T = 1u
.param SimTime = 3*T + 100n
save all
+ @n.x1.xm1.nsg13_lv_nmos[gm]
+ @n.x1.xm2.nsg13_lv_nmos[gm]
+ @n.x1.xm1.nsg13_lv_nmos[ids]
+ @n.x1.xm2.nsg13_lv_nmos[ids]
tran 1n \{SimTime\}
plot v(out1) v(out2)
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
C {lab_pin.sym} 550 80 2 0 {name=p10 sig_type=std_logic lab=out1}
C {lab_pin.sym} 620 40 2 0 {name=p11 sig_type=std_logic lab=out2}
C {vsource.sym} -50 270 0 0 {name=Vin1 value=0.5 savecurrent=false}
C {gnd.sym} -50 320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -50 220 0 0 {name=p12 sig_type=std_logic lab=Vin1}
C {vsource.sym} 60 270 0 0 {name=Vin2 value=0.45 savecurrent=false}
C {gnd.sym} 60 320 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 60 220 0 0 {name=p13 sig_type=std_logic lab=Vin2}
C {vsource.sym} 150 270 0 0 {name=Vclock value="PULSE(0 \{Vdd\} \{T/2\} \{T/20\} \{T/20\} \{T/2\} \{T\})" savecurrent=false}
C {gnd.sym} 150 320 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 150 220 0 0 {name=p14 sig_type=std_logic lab=CLK}
