v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -50 -90 -30 {
lab=common}
N -0 -30 90 -30 {
lab=common}
N 90 -130 90 -110 {
lab=Q}
N 90 -130 460 -130 {
lab=Q}
N 90 -150 90 -130 {
lab=Q}
N -90 -130 -90 -110 {
lab=P}
N -90 -150 -90 -130 {
lab=P}
N -90 -220 -90 -210 {
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
N 90 -250 280 -250 {
lab=Vout2}
N 90 -350 90 -320 {
lab=Vdd}
N -90 -370 90 -370 {
lab=Vdd}
N -90 -350 -90 -320 {
lab=Vdd}
N -280 -370 -280 -320 {
lab=Vdd}
N -340 -320 -320 -320 {
lab=CLK}
N 0 150 0 160 {
lab=Vss}
N 90 -50 90 -30 {
lab=common}
N 50 100 50 150 {
lab=Vss}
N 0 150 50 150 {
lab=Vss}
N 0 100 50 100 {
lab=Vss}
N 0 130 0 150 {
lab=Vss}
N 90 -180 160 -180 {
lab=Vss}
N -160 -180 -90 -180 {
lab=Vss}
N -160 -80 -130 -80 {
lab=Vin1}
N 130 -80 160 -80 {
lab=Vin2}
N -120 -370 -90 -370 {
lab=Vdd}
N -460 -370 -280 -370 {
lab=Vdd}
N -60 100 -40 100 {
lab=CLK}
N 320 -320 340 -320 {
lab=CLK}
N -410 -430 -370 -430 {
lab=CLK}
N -410 -400 -370 -400 {
lab=Vss}
N -410 -460 -370 -460 {
lab=Vdd}
N -0 -30 -0 70 {
lab=common}
N -90 -30 -0 -30 {
lab=common}
N 120 -370 280 -370 {
lab=Vdd}
N -280 -220 -90 -220 {
lab=Vout1}
N 280 -370 460 -370 {
lab=Vdd}
N -460 -130 -90 -130 {
lab=P}
N 280 -290 280 -250 {
lab=Vout2}
N 280 -370 280 -320 {
lab=Vdd}
N 0 -80 90 -80 {
lab=Vss}
N 0 -130 0 -80 {
lab=Vss}
N -90 -80 0 -80 {
lab=Vss}
N -120 -350 -90 -350 {
lab=Vdd}
N -90 -370 -90 -350 {
lab=Vdd}
N -120 -370 -120 -350 {
lab=Vdd}
N -280 -370 -120 -370 {
lab=Vdd}
N 90 -350 120 -350 {
lab=Vdd}
N 90 -370 90 -350 {
lab=Vdd}
N 120 -370 120 -350 {
lab=Vdd}
N 90 -370 120 -370 {
lab=Vdd}
N -520 -320 -500 -320 {
lab=CLK}
N -460 -370 -460 -320 {
lab=Vdd}
N -480 -370 -460 -370 {
lab=Vdd}
N -460 -290 -460 -130 {
lab=P}
N 460 -370 460 -320 {
lab=Vdd}
N 460 -290 460 -130 {
lab=Q}
N 500 -320 520 -320 {
lab=CLK}
N -90 -250 -90 -220 {
lab=Vout1}
N -280 -290 -280 -220 {
lab=Vout1}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 -80 2 1 {name=M1
l=\{L12\}
w=\{W12\}
ng=1
m=\{M12\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 -80 2 0 {name=M2
l=\{L12\}
w=\{W12\}
ng=1
m=\{M12\}
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
l=\{L56\}
w=\{W56\}
ng=1
m=\{M56\}
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
C {sg13g2_pr/sg13_lv_nmos.sym} -20 100 2 1 {name=M7
l=\{L7\}
w=\{W7\}
ng=1
m=\{M7\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -480 -320 0 0 {spice_ignore=0
name=M8
l=\{L89\}
w=\{W89\}
ng=1
m=\{M89\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 480 -320 0 1 {spice_ignore=0
name=M9
l=\{L89\}
w=\{W89\}
ng=1
m=\{M89\}
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 280 -250 0 0 {name=p3 lab=Vout2
}
C {opin.sym} -280 -220 2 0 {name=p4 lab=Vout1}
C {ipin.sym} -160 -80 0 0 {name=p5 lab=Vin1}
C {ipin.sym} 160 -80 0 1 {name=p6 lab=Vin2}
C {lab_pin.sym} -460 -130 0 0 {name=p14 sig_type=std_logic lab=P}
C {lab_pin.sym} 460 -130 0 1 {name=p15 sig_type=std_logic lab=Q}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -320 2 0 {name=M11
l=\{Lab\}
w=\{Wab\}
ng=1
m=\{Wab\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -300 -320 2 1 {name=M10
l=\{Lab\}
w=\{Wab\}
ng=1
m=\{Wab\}
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -410 -430 0 0 {name=p21 lab=CLK}
C {lab_pin.sym} -370 -430 2 0 {name=p22 sig_type=std_logic lab=CLK}
C {ipin.sym} -410 -400 0 0 {name=p23 lab=Vss}
C {lab_pin.sym} -370 -400 2 0 {name=p24 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 160 -180 2 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -160 -180 0 0 {name=p7 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 0 160 0 0 {name=p8 sig_type=std_logic lab=Vss}
C {ipin.sym} -410 -460 0 0 {name=p25 lab=Vdd}
C {lab_pin.sym} -370 -460 2 0 {name=p26 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -480 -370 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -340 -320 2 1 {name=p12 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 340 -320 2 0 {name=p19 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -60 100 2 1 {name=p20 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 0 -20 0 0 {name=p27 sig_type=std_logic lab=common
}
C {lab_pin.sym} 0 -130 0 0 {name=p9 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -520 -320 2 1 {name=p10 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 520 -320 2 0 {name=p11 sig_type=std_logic lab=CLK}
