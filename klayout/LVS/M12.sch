v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 10 60 10 {
lab=xxx}
N -30 -80 -30 -20 {
lab=P}
N -30 40 -30 90 {
lab=common}
N -110 10 -70 10 {
lab=Vin1}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 10 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -30 -80 0 0 {name=p1 sig_type=std_logic lab=P}
C {lab_pin.sym} -110 10 0 0 {name=p2 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 60 10 0 1 {name=p4 sig_type=std_logic lab=Vss}
C {lab_pin.sym} -30 90 0 0 {name=p3 sig_type=std_logic lab=common}
