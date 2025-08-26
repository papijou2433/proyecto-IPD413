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
N -480 20 -480 40 {
lab=GND}
N -480 260 -480 280 {
lab=GND}
N -480 90 -480 120 {
lab=in2}
N -60 300 -60 320 {
lab=GND}
N -60 220 -60 240 {
lab=CLK}
N 360 -40 360 -10 {
lab=#net1}
N 720 30 720 40 {
lab=out1}
N 480 40 720 40 {
lab=out1}
N 590 140 590 160 {
lab=Vss}
N -480 180 -480 200 {
lab=#net2}
N 590 70 590 80 {
lab=out2}
N 360 -120 360 -100 {
lab=Vdd}
N -480 -60 -480 -40 {
lab=#net3}
N -480 -150 -480 -120 {
lab=Vin1}
C {code.sym} 0 -110 0 0 {name=Sim_param only_toplevel=false value=
"
.param Vdd   = 1.8
.param VCM   = 0.9
.param Vstep = 0.5m
.param Vin2  = VCM
.ic V(out1) = 1.8
.ic V(out2) = 1.8
.ic V(x1.common) = 1.8
.ic V(x1.P) = 1.8
.ic V(x1.Q) = 1.8

"}
C {vsource.sym} -240 270 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {gnd.sym} -240 320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -240 220 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {../sch/strongarm.sym} 340 -10 0 0 {name=x1 spice_ignore=0}
C {code.sym} -130 -110 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} 210 -330 0 0 {name=MOS_param_1GHZ spice_ignore=1
 only_toplevel=false value="
** TRANSISTORES NMOS

.param W12 = 0.25u
.param L12 = 0.13u
.param M12 = 6

.param W34 = 0.25u
.param L34 = 0.13u
.param M34 = 5

.param W56 = 0.25u
.param L56 = 0.13u
.param M56 = 2

.param W7  = 0.25u
.param L7  = 0.13u
.param M7  = 20

.param W89 = 0.25u
.param L89 = 0.13u
.param M89 = 1

.param Wab = 0.25u
.param Lab = 0.13u
.param Mab = 1
"}
C {vsource.sym} -150 270 0 0 {name=Vss value=0 savecurrent=false}
C {gnd.sym} -150 320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -150 220 0 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 150 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 360 -120 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 260 110 0 0 {name=p5 sig_type=std_logic lab=in2}
C {lab_pin.sym} 260 10 0 0 {name=p6 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 260 60 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {code.sym} -130 50 0 0 {name=Tran_Sim spice_ignore=0 only_toplevel=false value="
.param T = 400p
.control
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
+ @n.x1.xm7.nsg13_lv_nmos[vds]
*
+ @n.x1.xm1.nsg13_lv_nmos[ids]
+ @n.x1.xm2.nsg13_lv_nmos[ids]
+ @n.x1.xm3.nsg13_lv_nmos[ids]
+ @n.x1.xm4.nsg13_lv_nmos[ids]
+ @n.x1.xm5.nsg13_lv_pmos[ids]
+ @n.x1.xm6.nsg13_lv_pmos[ids]
+ @n.x1.xm7.nsg13_lv_nmos[ids]
+ @n.x1.xm8.nsg13_lv_pmos[ids]
+ @n.x1.xm9.nsg13_lv_pmos[ids]
+ @n.x1.xm10.nsg13_lv_pmos[ids]
+ @n.x1.xm11.nsg13_lv_pmos[ids]
*
+ @n.x1.xm1.nsg13_lv_nmos[gds]
+ @n.x1.xm2.nsg13_lv_nmos[gds]
+ @n.x1.xm7.nsg13_lv_nmos[gds]

tran 0.1p 1.2n
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
let id3 = @n.x1.xm3.nsg13_lv_nmos[ids]
let id4 = @n.x1.xm4.nsg13_lv_nmos[ids]
let id5 = @n.x1.xm5.nsg13_lv_pmos[ids]
let id6 = @n.x1.xm6.nsg13_lv_pmos[ids]
let id7 = @n.x1.xm7.nsg13_lv_nmos[ids]
let id8 = @n.x1.xm8.nsg13_lv_pmos[ids]
let id9 = @n.x1.xm9.nsg13_lv_pmos[ids]
let id10 = @n.x1.xm10.nsg13_lv_pmos[ids]
let id11 = @n.x1.xm11.nsg13_lv_pmos[ids]
let i_tot = i(vmeas)

let rds1 = 1/@n.x1.xm1.nsg13_lv_nmos[gds]
let rds2 = 1/@n.x1.xm2.nsg13_lv_nmos[gds]
let rds7 = 1/@n.x1.xm7.nsg13_lv_nmos[gds]
let Pot = i_tot*1.8

meas tran id_peak1 MAX id1 from=200p to=600p
meas tran id_peak2 MAX id2 from=200p to=600p
meas tran id_peak3 MAX id3 from=200p to=600p
meas tran id_peak4 MAX id4 from=200p to=600p
meas tran id_peak5 MAX id5 from=200p to=600p
meas tran id_peak6 MAX id6 from=200p to=600p
meas tran id_peak7 MAX id7 from=200p to=600p
meas tran id_peak8 MAX id8 from=200p to=600p
meas tran id_peak9 MAX id9 from=200p to=600p
meas tran id_peak10 MAX id10 from=200p to=600p
meas tran id_peak11 MAX id11 from=200p to=600p
meas tran itot_max MAX i_tot from=200p to=600p

meas tran id_avg1 AVG id1 from=200p to=600p
meas tran id_avg2 AVG id2 from=200p to=600p
meas tran id_avg3 AVG id3 from=200p to=600p
meas tran id_avg4 AVG id4 from=200p to=600p
meas tran id_avg5 AVG id5 from=200p to=600p
meas tran id_avg6 AVG id6 from=200p to=600p
meas tran id_avg7 AVG id7 from=200p to=600p
meas tran id_avg8 AVG id8 from=200p to=600p
meas tran id_avg9 AVG id9 from=200p to=600p
meas tran id_avg10 AVG id10 from=200p to=600p
meas tran id_avg11 AVG id11 from=200p to=600p
meas tran itot_avg AVG i_tot from=200p to=600p

meas tran Amp_t TRIG AT=200p TARG v(out2) VAL=0.9 CROSS=1
meas tran reg_t TRIG v(out2) VAL=0.9  CROSS=1 TARG v(out2) VAL=0.01 CROSS=1
meas tran Avg_Power AVG Pot from=200p to=600p
meas tran Energy INTEG Pot from=200p to=400p
meas tran Energy2 INTEG Pot from=200p to=600p
* se mide de dos manetas la energía en medio ciclo y ciclo entero
wrdata ../proyecto-IPD413/simulations/SA_tran_currents.raw id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 id11 
wrdata ../proyecto-IPD413/simulations/SA_tran_voltages.raw v(out1) v(out2) v(x1.P) x(x1.Q)
plot v(Vin1) v(in2) 
plot v(out1) v(out2) v(clk)+2 
plot v(x1.Q) v(x1.P)
.endc
"}
C {capa.sym} 590 110 0 0 {spiceignore=1
name=C1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 720 70 0 0 {name=C2
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -480 -10 0 0 {name=Vin1 value=\{VCM\} savecurrent=false}
C {gnd.sym} -480 40 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -480 -150 0 0 {name=p12 sig_type=std_logic lab=Vin1}
C {vsource.sym} -480 230 0 0 {name=Vin2 value=\{VCM\} savecurrent=false}
C {gnd.sym} -480 280 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -480 90 0 0 {name=p13 sig_type=std_logic lab=in2}
C {vsource.sym} -60 270 0 0 {name=Vclock value="PULSE(0 \{Vdd\} \{T/2\} \{T/20\} \{T/20\} \{T/2\} \{T\})" savecurrent=false}
C {gnd.sym} -60 320 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -60 220 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 720 120 0 0 {name=p16 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 590 160 0 0 {name=p17 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 720 30 2 0 {name=p19 sig_type=std_logic lab=out1}
C {lab_pin.sym} 590 70 2 0 {name=p20 sig_type=std_logic lab=out2}
C {vsource.sym} -480 150 0 0 {name=Vstep value="PULSE(\{vstep\} \{-vstep\} \{T\} \{T/20\} \{T/20\} \{T\} \{2*T\})" savecurrent=false}
C {code.sym} 10 50 0 0 {name=MOS_param_2.5GHz_fingers spice_ignore=0

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
C {ammeter.sym} 360 -70 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {code.sym} 10 -330 0 0 {name=MOS_param_1 spice_ignore=1

 only_toplevel=false value="
** TRANSISTORES NMOS

.param W12 = 0.25u
.param L12 = 0.5u
.param M12 = 80
.param F12 = 1

.param W34 = 0.25u
.param L34 = 0.13u
.param M34 = 15
.param F34 = 1

.param W56 = 0.25u
.param L56 = 0.13u
.param M56 = 14
.param F56 = 1

.param W7  = 0.25u
.param L7  = 0.13u
.param M7  = 60
.param F7  = 1

.param W89 = 0.25u
.param L89 = 0.13u
.param M89 = 12
.param F89 = 1

.param Wab = 0.25u
.param Lab = 0.13u
.param Mab = 9
.param Fab = 1
"}
C {/workspaces/usm-vlsi-tools/shared_xserver/proyecto-IPD413/xschem/sch/strongarm_dimensionado.sym} 630 -250 0 0 {name=x2
spice_ignore=1}
C {code.sym} -140 -330 0 0 {name=Sim_param1 spice_ignore=1
 only_toplevel=false value=
"
.param Vdd   = 1.8
.param VCM   = 0.9
.param Vstep = 1m
.param Vin2  = VCM-Vstep
.ic V(out1) = 1.8
.ic V(out2) = 1.8
.ic V(x1.common) = 1.8
.ic V(x1.P) = 1.8
.ic V(x1.Q) = 1.8

"}
C {vsource.sym} -480 -90 0 0 {name=Vstep1 value="PULSE(\{-vstep\} \{vstep\} \{T\} \{T/20\} \{T/20\} \{T\} \{2*T\})" savecurrent=false}
