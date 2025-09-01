v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -0 -20 0 40 {
lab=Vss}
N -90 -20 -40 -20 {
lab=CLK}
N 0 -70 0 -50 {
lab=common}
N -50 -70 0 -70 {
lab=common}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 -20 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 0 40 0 0 {name=p1 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -90 -20 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -50 -70 0 0 {name=p3 sig_type=std_logic lab=common
}
