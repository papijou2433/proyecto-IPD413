v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -50 -90 -30 {
lab=#net1}
N 0 -30 90 -30 {
lab=#net1}
N 0 -30 0 -10 {
lab=#net1}
N -90 -30 0 -30 {
lab=#net1}
N 90 -130 90 -110 {
lab=Q}
N 90 -130 120 -130 {
lab=Q}
N 90 -150 90 -130 {
lab=Q}
N -90 -130 -90 -110 {
lab=P}
N -110 -130 -90 -130 {
lab=P}
N -90 -150 -90 -130 {
lab=P}
N -90 -250 -90 -210 {
lab=Vout1}
N 90 -250 90 -210 {
lab=Vout2}
N -50 -180 -30 -180 {
lab=Vout2}
N 30 -320 50 -320 {
lab=Vout1}
N -90 -290 -90 -250 {
lab=Vout1}
N -40 -250 30 -320 {
lab=Vout1}
N -90 -250 -40 -250 {
lab=Vout1}
N -40 -250 30 -180 {
lab=Vout1}
N 30 -180 50 -180 {
lab=Vout1}
N -30 -180 40 -250 {
lab=Vout2}
N 40 -250 90 -250 {
lab=Vout2}
N 90 -290 90 -250 {
lab=Vout2}
N -30 -320 40 -250 {
lab=Vout2}
N -50 -320 -30 -320 {
lab=Vout2}
N 90 -250 120 -250 {
lab=Vout2}
N -120 -250 -90 -250 {
lab=Vout1}
N 90 -370 90 -320 {
lab=Vdd}
N -90 -370 90 -370 {
lab=Vdd}
N -90 -370 -90 -320 {
lab=Vdd}
N -280 -370 -280 -320 {
lab=Vdd}
N -460 -370 -460 -320 {
lab=Vdd}
N -460 -290 -460 -260 {
lab=P}
N -340 -320 -320 -320 {
lab=CLK}
N 0 70 0 80 {
lab=Vss}
N 90 -50 90 -30 {
lab=#net1}
N 50 -80 90 -80 {
lab=Vss}
N 50 20 50 70 {
lab=Vss}
N -90 -80 50 -80 {
lab=Vss}
N 0 70 50 70 {
lab=Vss}
N -0 20 50 20 {
lab=Vss}
N 50 -80 50 20 {
lab=Vss}
N -0 50 -0 70 {
lab=Vss}
N 90 -180 160 -180 {
lab=Vss}
N -160 -180 -90 -180 {
lab=Vss}
N -160 -80 -130 -80 {
lab=Vin1}
N 130 -80 160 -80 {
lab=Vin2}
N -280 -290 -280 -260 {
lab=Q}
N -520 -320 -500 -320 {
lab=CLK}
N -280 -370 -90 -370 {
lab=Vdd}
N -460 -370 -280 -370 {
lab=Vdd}
N -480 -370 -460 -370 {
lab=Vdd}
N -60 20 -40 20 {
lab=CLK}
N -280 -240 -280 -190 {
lab=Vdd}
N -460 -240 -460 -190 {
lab=Vdd}
N -460 -160 -460 -130 {
lab=Vout1}
N -340 -190 -320 -190 {
lab=CLK}
N -280 -160 -280 -130 {
lab=Vout2}
N -520 -190 -500 -190 {
lab=CLK}
N -460 -240 -280 -240 {
lab=Vdd}
N -480 -240 -460 -240 {
lab=Vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 -80 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 -80 2 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 -180 2 0 {name=M3
l=\{L34\}
w=\{W34\}
ng=1
m=\{M34\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 70 -180 2 1 {name=M4
l=\{L34\}
w=\{W34\}
ng=1
m=\{M34\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 70 -320 0 0 {name=M6
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -70 -320 0 1 {name=M5
l=\{L56\}
w=\{W56\}
ng=1
m=\{M56\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 20 2 1 {name=M7
l=\{L7\}
w=\{W7\}
ng=1
m=\{M7\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -480 -320 0 0 {name=M8
l=\{L89\}
w=\{W89\}
ng=1
m=\{M89\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -300 -320 0 0 {name=M9
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -480 -370 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 0 80 0 0 {name=p2 lab=Vss}
C {opin.sym} 120 -250 0 0 {name=p3 lab=Vout2}
C {opin.sym} -120 -250 2 0 {name=p4 lab=Vout1}
C {ipin.sym} -160 -80 0 0 {name=p5 lab=Vin1}
C {ipin.sym} 160 -80 0 1 {name=p6 lab=Vin2}
C {ipin.sym} -160 -180 0 0 {name=p7 lab=Vss}
C {ipin.sym} 160 -180 2 0 {name=p8 lab=Vss}
C {lab_pin.sym} -460 -260 0 0 {name=p9 sig_type=std_logic lab=P}
C {lab_pin.sym} -280 -260 0 0 {name=p10 sig_type=std_logic lab=Q}
C {ipin.sym} -340 -320 0 0 {name=p11 lab=CLK}
C {ipin.sym} -520 -320 0 0 {name=p12 lab=CLK}
C {ipin.sym} -60 20 0 0 {name=p13 lab=CLK}
C {lab_pin.sym} -110 -130 0 0 {name=p14 sig_type=std_logic lab=P}
C {lab_pin.sym} 120 -130 0 1 {name=p15 sig_type=std_logic lab=Q}
C {sg13g2_pr/sg13_lv_pmos.sym} -300 -190 0 0 {name=M11
l=\{Lab\}
w=\{Wab\}
ng=1
m=\{Wab\}
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -480 -240 0 0 {name=p16 lab=Vdd}
C {lab_pin.sym} -460 -130 0 0 {name=p17 sig_type=std_logic lab=Vout1}
C {lab_pin.sym} -280 -130 0 0 {name=p18 sig_type=std_logic lab=Vout2}
C {ipin.sym} -340 -190 0 0 {name=p19 lab=CLK}
C {ipin.sym} -520 -190 0 0 {name=p20 lab=CLK}
C {sg13g2_pr/sg13_lv_pmos.sym} -480 -190 0 0 {name=M10
l=\{Lab\}
w=\{Wab\}
ng=1
m=\{Wab\}
model=sg13_lv_pmos
spiceprefix=X
}
