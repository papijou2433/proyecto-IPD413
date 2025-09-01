v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -60 90 -20 {
lab=Vout1}
N 90 -160 90 -130 {
lab=Vdd}
N 90 10 190 10 {
lab=Vss}
N 90 40 90 80 {
lab=Q}
N 260 -160 260 -130 {
lab=Vdd}
N 90 -160 260 -160 {
lab=Vdd}
N 300 -130 360 -130 {
lab=CLK}
N 50 -60 50 10 {
lab=Vout2}
N -20 -60 50 -60 {
lab=Vout2}
N 50 -130 50 -60 {
lab=Vout2}
N 90 -100 90 -60 {
lab=Vout1}
N 260 -100 260 -60 {
lab=Vout1}
N 90 -60 260 -60 {
lab=Vout1}
N 400 -160 400 -130 {
lab=Vdd}
N 260 -160 400 -160 {
lab=Vdd}
N 400 -100 400 80 {
lab=Q}
N 90 80 400 80 {
lab=Q}
N -10 -160 90 -160 {
lab=Vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 70 10 0 0 {name=M1
l=0.13u
w=2.0u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 70 -130 0 0 {name=M2
l=0.13u
w=3.5u
ng=7
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 190 10 0 1 {name=p1 sig_type=std_logic lab=Vss}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -130 0 1 {name=M3
l=0.13u
w=0.7u
ng=1
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 330 -130 3 0 {name=p2 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 400 80 0 1 {name=p3 sig_type=std_logic lab=Q
}
C {lab_pin.sym} -20 -60 0 0 {name=p4 sig_type=std_logic lab=Vout2}
C {lab_pin.sym} 90 -40 0 1 {name=p5 sig_type=std_logic lab=Vout1}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -130 0 0 {name=M4
l=0.13u
w=1.0u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -10 -160 0 0 {name=p6 sig_type=std_logic lab=Vdd}
