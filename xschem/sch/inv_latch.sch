v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 90 80 90 {
lab=Vout}
N 40 -30 80 -30 {
lab=Vout}
N 80 30 150 30 {
lab=Vout}
N 80 -30 80 30 {
lab=Vout}
N -80 -30 -40 -30 {
lab=#net1}
N 0 120 0 150 {
lab=Vdd}
N -80 -30 -80 30 {
lab=#net1}
N -80 30 -80 90 {
lab=#net1}
N 80 30 80 90 {
lab=Vout}
N -0 0 0 60 {
lab=Vss}
N -80 90 -40 90 {
lab=#net1}
N -200 30 -80 30 {
lab=#net1}
N -310 60 -240 60 {
lab=#net2}
N -430 60 -390 60 {
lab=Vin1}
N -350 90 -350 110 {
lab=Vss}
N 0 -80 0 -60 {
lab=Vdd}
N -350 0 -350 30 {
lab=Vdd}
N -200 60 -200 110 {
lab=Vss}
N -310 220 -240 220 {
lab=#net3}
N -430 220 -390 220 {
lab=Vin2}
N -350 250 -350 270 {
lab=Vss}
N -350 160 -350 190 {
lab=Vdd}
N -200 220 -200 270 {
lab=Vss}
N -200 190 80 190 {
lab=Vout}
N 80 90 80 190 {
lab=Vout}
C {../sch/inv_lv.sym} 0 -30 0 0 {name=x1}
C {../sch/inv_lv.sym} 0 90 2 0 {name=x2}
C {opin.sym} 150 30 0 0 {name=p1 lab=Vout}
C {ipin.sym} -350 0 0 0 {name=p3 lab=Vdd}
C {ipin.sym} 0 150 2 1 {name=p4 lab=Vdd}
C {ipin.sym} -430 60 0 0 {name=p5 lab=Vin1}
C {sg13g2_pr/sg13_lv_nmos.sym} -220 60 0 0 {name=M1
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 0 30 0 0 {name=p7 lab=Vss}
C {ipin.sym} -350 110 0 0 {name=p2 lab=Vss}
C {../sch/inv_lv.sym} -350 60 0 0 {name=x3}
C {ipin.sym} 0 -80 0 0 {name=p8 lab=Vdd}
C {ipin.sym} -200 110 0 0 {name=p9 lab=Vss}
C {ipin.sym} -350 160 0 0 {name=p6 lab=Vdd}
C {ipin.sym} -430 220 0 0 {name=p10 lab=Vin2}
C {sg13g2_pr/sg13_lv_nmos.sym} -220 220 0 0 {name=M2
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -350 270 0 0 {name=p11 lab=Vss}
C {../sch/inv_lv.sym} -350 220 0 0 {name=x4}
C {ipin.sym} -200 270 0 0 {name=p12 lab=Vss}
