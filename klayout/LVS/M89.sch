v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -20 -40 -20 {
lab=CLK}
N 0 -70 -0 -20 {
lab=Vdd}
N -50 -70 0 -70 {
lab=Vdd}
N 0 10 0 40 {
lab=PQ}
C {lab_pin.sym} 0 40 0 0 {name=p1 sig_type=std_logic lab=PQ}
C {lab_pin.sym} -90 -20 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -50 -70 0 0 {name=p3 sig_type=std_logic lab=Vdd
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -20 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
