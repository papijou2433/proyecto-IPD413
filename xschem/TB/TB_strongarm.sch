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
C {code.sym} -170 -110 0 0 {name=Sim_param only_toplevel=false value=
"
.param Vdd = 1.2
Clk CLK 0 PULSE(0 \{Vdd\} )
"}
C {vsource.sym} -240 270 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {gnd.sym} -240 320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -240 220 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {../sch/strongarm.sym} 340 -10 0 0 {name=x1}
C {code.sym} -290 -110 0 0 {name=Modelos only_toplevel=false value=blabla}
C {code.sym} -40 -110 0 0 {name=MOS_param only_toplevel=false value=blabla}
C {code.sym} -290 50 0 0 {name=Sim_pre spice_ignore=0 only_toplevel=false value="

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
