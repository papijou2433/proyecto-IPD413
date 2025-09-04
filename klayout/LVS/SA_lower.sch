v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 30 180 30 {
lab=common}
N 70 30 70 60 {
lab=common}
N -20 30 70 30 {
lab=common}
N 70 -20 70 0 {
lab=Vss}
N -20 -50 -20 -30 {
lab=P}
N -90 0 -60 0 {
lab=Vin1}
N 220 0 250 0 {
lab=Vin2}
N 70 0 180 -0 {
lab=Vss}
N -20 -0 70 0 {
lab=Vss}
N 180 -50 180 -30 {
lab=Q}
N 70 90 70 140 {
lab=Vss}
N 10 90 30 90 {
lab=CLK}
C {sg13g2_pr/sg13_lv_nmos.sym} -40 0 2 1 {name=M1
l=0.5u
w=2.5u
ng=5
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 70 -20 0 0 {name=p1 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -20 -50 0 0 {name=p2 sig_type=std_logic lab=P}
C {lab_pin.sym} 180 -50 0 1 {name=p3 sig_type=std_logic lab=Q}
C {lab_pin.sym} -90 0 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 250 0 0 1 {name=p5 sig_type=std_logic lab=Vin2}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 90 0 0 {name=M3
l=0.13u
w=1.0u
ng=1
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 70 140 0 0 {name=p6 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 10 90 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 70 50 0 0 {name=p8 sig_type=std_logic lab=common}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 0 2 0 {name=M2
l=0.5u
w=2.5u
ng=5
m=8
model=sg13_lv_nmos
spiceprefix=X
}
