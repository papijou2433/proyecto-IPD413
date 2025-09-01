v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -20 -40 -20 {
lab=YX}
N -50 -70 0 -70 {
lab=PQ}
N 0 10 0 40 {
lab=XY}
N 0 -20 70 -20 {
lab=Vss}
N 0 -70 0 -50 {
lab=PQ}
C {lab_pin.sym} 0 40 0 0 {name=p1 sig_type=std_logic lab=XY}
C {lab_pin.sym} -90 -20 0 0 {name=p2 sig_type=std_logic lab=YX}
C {lab_pin.sym} 70 -20 0 1 {name=p3 sig_type=std_logic lab=Vss
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 -20 0 0 {name=M1
l=0.13u
w=2.0u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -50 -70 0 0 {name=p4 sig_type=std_logic lab=PQ}
