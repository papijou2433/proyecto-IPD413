v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -290 70 -250 {
lab=Q}
N 70 -290 440 -290 {
lab=Q}
N 70 -310 70 -290 {
lab=Q}
N -110 -290 -110 -250 {
lab=P}
N -110 -310 -110 -290 {
lab=P}
N 70 -410 70 -370 {
lab=SA_O2}
N -70 -340 -50 -340 {
lab=SA_O2}
N 10 -480 30 -480 {
lab=SA_O1}
N -110 -450 -110 -410 {
lab=SA_O1}
N -60 -410 10 -480 {
lab=SA_O1}
N -110 -410 -60 -410 {
lab=SA_O1}
N -60 -410 10 -340 {
lab=SA_O1}
N 10 -340 30 -340 {
lab=SA_O1}
N -50 -340 20 -410 {
lab=SA_O2}
N 20 -410 70 -410 {
lab=SA_O2}
N 70 -450 70 -410 {
lab=SA_O2}
N -50 -480 20 -410 {
lab=SA_O2}
N -70 -480 -50 -480 {
lab=SA_O2}
N 70 -410 260 -410 {
lab=SA_O2}
N 70 -510 70 -480 {
lab=Vdd}
N -110 -530 70 -530 {
lab=Vdd}
N -110 -510 -110 -480 {
lab=Vdd}
N -300 -530 -300 -480 {
lab=Vdd}
N -360 -480 -340 -480 {
lab=CLK}
N 70 -340 140 -340 {
lab=Vss}
N -180 -340 -110 -340 {
lab=Vss}
N -140 -530 -110 -530 {
lab=Vdd}
N -480 -530 -300 -530 {
lab=Vdd}
N 300 -480 320 -480 {
lab=CLK}
N 100 -530 260 -530 {
lab=Vdd}
N -300 -410 -110 -410 {
lab=SA_O1}
N 260 -530 440 -530 {
lab=Vdd}
N -480 -290 -110 -290 {
lab=P}
N 260 -450 260 -410 {
lab=SA_O2}
N 260 -530 260 -480 {
lab=Vdd}
N -140 -510 -110 -510 {
lab=Vdd}
N -110 -530 -110 -510 {
lab=Vdd}
N -140 -530 -140 -510 {
lab=Vdd}
N -300 -530 -140 -530 {
lab=Vdd}
N 70 -510 100 -510 {
lab=Vdd}
N 70 -530 70 -510 {
lab=Vdd}
N 100 -530 100 -510 {
lab=Vdd}
N 70 -530 100 -530 {
lab=Vdd}
N -540 -480 -520 -480 {
lab=CLK}
N -480 -530 -480 -470 {
lab=Vdd}
N -500 -530 -480 -530 {
lab=Vdd}
N -480 -450 -480 -290 {
lab=P}
N 440 -530 440 -480 {
lab=Vdd}
N 440 -450 440 -290 {
lab=Q}
N 480 -480 500 -480 {
lab=CLK}
N -110 -410 -110 -370 {
lab=SA_O1}
N -30 -170 -30 -140 {
lab=common}
N -180 -220 -150 -220 {
lab=Vin1}
N 110 -220 140 -220 {
lab=Vin2}
N -30 -110 -30 -60 {
lab=Vss}
N -90 -110 -70 -110 {
lab=CLK}
N -30 -170 70 -170 {
lab=common}
N 70 -190 70 -170 {
lab=common}
N -110 -170 -30 -170 {
lab=common}
N -110 -190 -110 -170 {
lab=common}
N -30 -220 70 -220 {
lab=Vss}
N -30 -260 -30 -220 {
lab=Vss}
N -110 -220 -30 -220 {
lab=Vss}
N 1050 -310 1100 -310 {
lab=Vdd}
N 960 -210 960 -180 {
lab=Vss}
N 960 -440 960 -410 {
lab=Vdd}
N 820 -340 870 -340 {
lab=SA_O1}
N 820 -280 870 -280 {
lab=SA_O2}
N -300 -450 -300 -410 {
lab=SA_O1}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 -340 0 0 {name=M4
l=0.13u
w=2.0u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 -480 0 0 {name=M6
l=0.13u
w=3.5u
ng=7
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -480 0 1 {name=M11
l=0.13u
w=0.7u
ng=1
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 460 -480 0 1 {name=M9
l=0.13u
w=1.0u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -90 -340 0 1 {name=M3
l=0.13u
w=2.0u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -480 0 1 {name=M5
l=0.13u
w=3.5u
ng=7
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -320 -480 0 0 {name=M10
l=0.13u
w=0.7u
ng=1
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -500 -480 0 0 {name=M8
l=0.13u
w=1.0u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -480 -290 0 0 {name=p14 sig_type=std_logic lab=P}
C {lab_pin.sym} 440 -290 0 1 {name=p15 sig_type=std_logic lab=Q}
C {lab_pin.sym} 140 -340 2 0 {name=p12 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -180 -340 0 0 {name=p13 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -500 -530 0 0 {name=p16 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -360 -480 2 1 {name=p17 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 320 -480 2 0 {name=p19 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -540 -480 2 1 {name=p20 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 500 -480 2 0 {name=p21 sig_type=std_logic lab=CLK}
C {sg13g2_pr/sg13_lv_nmos.sym} -130 -220 2 1 {name=M1
l=0.5u
w=2.5u
ng=5
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -30 -260 0 0 {name=p1 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -180 -220 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 140 -220 0 1 {name=p5 sig_type=std_logic lab=Vin2}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 -110 0 0 {name=M2
l=0.13u
w=1.0u
ng=1
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -30 -60 0 0 {name=p6 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -90 -110 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -110 -170 0 0 {name=p8 sig_type=std_logic lab=common}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 -220 2 0 {name=M7
l=0.5u
w=2.5u
ng=5
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {/workspaces/usm-vlsi-tools/shared_xserver/proyecto-IPD413/xschem/sch/inv_latch.sym} 960 -310 0 0 {name=x2}
C {lab_pin.sym} 960 -180 0 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 960 -440 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 820 -340 0 0 {name=p9 sig_type=std_logic lab=SA_O1}
C {lab_pin.sym} 820 -280 0 0 {name=p18 sig_type=std_logic lab=SA_O2}
C {lab_pin.sym} 260 -410 0 1 {name=p10 sig_type=std_logic lab=SA_O2}
C {lab_pin.sym} -300 -410 0 0 {name=p11 sig_type=std_logic lab=SA_O1}
C {lab_pin.sym} 1100 -310 0 1 {name=p22 sig_type=std_logic lab=OUT_Latch}
