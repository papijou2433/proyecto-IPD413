v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -180 -120 -160 {
lab=GND}
N -120 -240 50 -240 {
lab=vp}
N 110 -240 160 -240 {
lab=Pout}
N 260 -120 260 -100 {
lab=GND}
N -120 80 -120 100 {
lab=GND}
N -120 20 50 20 {
lab=vn}
N 110 20 160 20 {
lab=Nout}
N 160 20 160 50 {
lab=Nout}
N 160 -240 160 -220 {
lab=Pout}
N 130 -180 260 -180 {
lab=#net1}
N 130 80 260 80 {
lab=GND}
C {devices/res.sym} 80 -240 1 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -120 -160 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 260 -100 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 20 -240 1 0 {name=p3 sig_type=std_logic lab=vp
}
C {devices/lab_pin.sym} 160 -240 2 0 {name=p4 sig_type=std_logic lab=Pout
}
C {code_shown.sym} -360 -360 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} -350 -230 0 0 {name=MOS_Param only_toplevel=false 

value="
.param R = 100k
.parameter T = 10n
.param Vdd = 1

.ic v(Pout) = 1
.ic v(Nout) = 0

* MOS Param
.param temp=27
.param M = 1
.param W = 1u 
.param L = 0.13u
"}
C {devices/vsource.sym} -120 -210 0 0 {name=V3 value="PULSE (1 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {devices/vsource.sym} 260 -150 0 0 {name=V1 value="1" savecurrent=false}
C {devices/res.sym} 80 20 1 0 {name=R3
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -120 100 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 20 20 1 0 {name=p5 sig_type=std_logic lab=vn
}
C {devices/lab_pin.sym} 160 20 2 0 {name=p6 sig_type=std_logic lab=Nout
}
C {devices/vsource.sym} -120 50 0 0 {name=V4 value="PULSE (0 1 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {code.sym} -350 -90 0 0 {name=Sim only_toplevel=false value="
.control
let strt_w = 0.3u
let stop_w = 10u
let step_w = 0.1u
let curr_w = 0.3u
save all
while curr_w le stop_w
	alterparam W = $&curr_w
	reset
	tran 10p 2n
	meas tran tauN when v(Nout) = 0.63 CROSS=1
	meas tran tauP when v(Pout) = 0.37 CROSS=1
	let Cn = tauN/(100k)
	let Cp = tauP/(100k)
	wrdata ../proyecto-IPD413/simulations/Cgate_vs_Width.raw Cn Cp curr_w
	set appendwrite
	let curr_w = curr_w + step_w
end
plot v(Nout)
.endc
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 60 1 0 {name=M3
l=\{L\}
w=\{W\}
ng=1
m=\{M\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 160 -200 1 0 {name=M1
l=\{L\}
w=\{W\}
ng=1
m=\{M\}
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 260 80 0 0 {name=l1 lab=GND}
