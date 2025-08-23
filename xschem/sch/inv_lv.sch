v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 0 0 10 {
lab=Vout}
N 0 0 100 0 {
lab=Vout}
N 0 -10 0 0 {
lab=Vout}
N -40 0 -40 40 {
lab=Vin}
N -60 0 -40 0 {
lab=Vin}
N -40 -40 -40 0 {
lab=Vin}
N 0 -90 0 -40 {
lab=Vdd}
N -0 40 -0 90 {
lab=Vss}
C {ipin.sym} 0 -90 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 0 90 0 0 {name=p2 lab=Vss}
C {ipin.sym} -60 0 0 0 {name=p3 lab=Vin}
C {opin.sym} 100 0 0 0 {name=p4 lab=Vout}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 40 2 1 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -40 0 0 {name=M2
l=0.13u
w=2.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
