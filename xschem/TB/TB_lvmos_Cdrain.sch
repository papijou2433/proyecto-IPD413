v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1740 -1390 1740 -1370 {
lab=GND}
N 1740 -1450 1910 -1450 {
lab=vp}
N 1970 -1450 2020 -1450 {
lab=Pout}
N 2020 -1450 2020 -1420 {
lab=Pout}
N 1970 -1390 1980 -1390 {
lab=#net1}
N 1920 -1390 1920 -1380 {
lab=#net1}
N 1920 -1320 1920 -1300 {
lab=GND}
N 2020 -1390 2020 -1330 {
lab=#net1}
N 1970 -1330 2020 -1330 {
lab=#net1}
N 1970 -1390 1970 -1330 {
lab=#net1}
N 1920 -1390 1970 -1390 {
lab=#net1}
N 1740 -1130 1740 -1110 {
lab=GND}
N 1740 -1190 1910 -1190 {
lab=vn}
N 1970 -1190 2020 -1190 {
lab=Nout}
N 2020 -1190 2020 -1160 {
lab=Nout}
N 1970 -1130 1980 -1130 {
lab=GND}
N 1970 -1070 2020 -1070 {
lab=GND}
N 1970 -1130 1970 -1070 {
lab=GND}
N 2020 -1130 2020 -1070 {
lab=GND}
C {devices/res.sym} 1940 -1450 1 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1740 -1370 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1920 -1300 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1880 -1450 1 0 {name=p3 sig_type=std_logic lab=vp
}
C {devices/lab_pin.sym} 2020 -1450 2 0 {name=p4 sig_type=std_logic lab=Pout
}
C {code_shown.sym} 1500 -1570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} 1510 -1440 0 0 {name=MOS_Param only_toplevel=false 

value="
.param R = 100k
.parameter T = 10n
.param Vdd = 1.8

.ic v(Pout) = 0
.ic v(Nout) = 0

* MOS Param
.param temp=27
.param M = 1
.param W = 1u 
.param L = 0.13u
"}
C {devices/vsource.sym} 1740 -1420 0 0 {name=V3 value="PULSE (0 \{Vdd\} 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {devices/vsource.sym} 1920 -1350 0 0 {name=V1 value="1.2" savecurrent=false}
C {devices/res.sym} 1940 -1190 1 0 {name=R3
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1740 -1110 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 2020 -1070 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1880 -1190 1 0 {name=p5 sig_type=std_logic lab=vn
}
C {devices/lab_pin.sym} 2020 -1190 2 0 {name=p6 sig_type=std_logic lab=Nout
}
C {devices/vsource.sym} 1740 -1160 0 0 {name=V4 value="PULSE (0 \{Vdd\} 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {code.sym} 1510 -1300 0 0 {name=Sim only_toplevel=false value="
.control
let strt_w = 0.3u
let stop_w = 10u
let step_w = 0.1u
let curr_w = 1.0u
save all
while curr_w le stop_w
	alterparam W = $&curr_w
	reset
	tran 10p 2n
	meas tran tauN when v(Nout) = 1.138 CROSS=1
	meas tran tauP when v(Pout) = 1.138 CROSS=1
	let Cn = tauN/(100k)
	let Cp = tauP/(100k)
	wrdata ../proyecto-IPD413/simulations/Cap_vs_Width.raw Cn Cp curr_w
	set appendwrite
	let curr_w = curr_w + step_w
end
plot v(Nout)
.endc
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 2000 -1130 0 0 {name=M3
l=\{L\}
w=\{W\}
ng=1
m=\{M\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 2000 -1390 0 0 {name=M1
l=\{L\}
w=\{W\}
ng=1
m=\{M\}
model=sg13_lv_pmos
spiceprefix=X
}
