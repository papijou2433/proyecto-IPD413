v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -20 -40 -20 {
lab=Vin12}
N 0 -70 0 -50 {
lab=PQ}
N -50 -70 0 -70 {
lab=PQ}
N 0 10 0 40 {
lab=common}
N -0 -20 90 -20 {
lab=Vss}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 -20 0 0 {name=M1
l=0.5u
w=2.5u
ng=5
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 0 40 0 0 {name=p1 sig_type=std_logic lab=common}
C {lab_pin.sym} -90 -20 0 0 {name=p2 sig_type=std_logic lab=Vin12}
C {lab_pin.sym} -50 -70 0 0 {name=p3 sig_type=std_logic lab=PQ
}
C {lab_pin.sym} 90 -20 0 1 {name=p4 sig_type=std_logic lab=Vss}
