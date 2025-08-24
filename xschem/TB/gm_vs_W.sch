v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 20 210 30 {
lab=#net1}
N 210 -10 310 -10 {
lab=GND}
N 310 -10 310 120 {
lab=GND}
N 210 120 310 120 {
lab=GND}
N 210 90 210 120 {
lab=GND}
N 210 -80 210 -40 {
lab=#net2}
N 100 60 100 70 {
lab=GND}
N 100 -10 170 -10 {
lab=#net3}
N 100 -10 100 -0 {
lab=#net3}
N 40 60 40 70 {
lab=GND}
N 40 -80 210 -80 {
lab=#net2}
N 40 -80 40 0 {
lab=#net2}
C {code.sym} -130 -60 0 0 {name=s1 only_toplevel=false value="
.param W = 1.0u
.control
let strt_w = 1.0u
let stop_w = 10u
let step_w = 0.1u
let curr_w = 1.0u
save all
while curr_w le stop_w
	alterparam W = $&curr_w
	reset
	save all
	+ @n.xm1.nsg13_lv_nmos[gm]
	op
	let gmn = @n.xm1.nsg13_lv_nmos[gm]
	wrdata ../proyecto-IPD413/simulations/gm_vs_w.raw gmn curr_w
	set appendwrite
	let curr_w = curr_w + step_w
end
.endc
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 190 -10 0 0 {name=M1
l=0.2u
w=\{W\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {isource.sym} 210 60 0 0 {name=I0 value=39u}
C {vsource.sym} 100 30 0 0 {name=V1 value=0.9 savecurrent=false}
C {gnd.sym} 100 70 0 0 {name=l1 lab=GND}
C {vsource.sym} 40 30 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 40 70 0 0 {name=l2 lab=GND}
C {gnd.sym} 210 120 0 0 {name=l3 lab=GND}
C {code.sym} -130 -220 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
