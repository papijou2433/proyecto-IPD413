v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} 1160 -1650 0 0 0.4 0.4 {}
N 1970 -1450 2030 -1450 {
lab=VOUT}
N 1740 -1390 1740 -1370 {
lab=GND}
N 1740 -1450 1910 -1450 {
lab=VIN}
N 2060 -1510 2060 -1490 {
lab=V1V}
N 2000 -1510 2030 -1510 {
lab=V1V}
N 2000 -1510 2000 -1490 {
lab=V1V}
N 2030 -1510 2030 -1490 {
lab=V1V}
N 2030 -1510 2060 -1510 {
lab=V1V}
N 2160 -1340 2160 -1280 {
lab=GND}
N 2160 -1430 2160 -1400 {
lab=V1V}
N 2030 -1590 2030 -1510 {
lab=V1V}
N 1980 -1280 2040 -1280 {
lab=VOUT_C}
N 1750 -1220 1750 -1200 {
lab=GND}
N 1750 -1280 1920 -1280 {
lab=VIN_C}
N 2040 -1360 2040 -1340 {
lab=V1V}
C {devices/res.sym} 1940 -1450 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1740 -1420 0 0 {name=V1 value="PULSE (1 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {devices/gnd.sym} 1740 -1370 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1880 -1450 1 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 2000 -1450 3 0 {name=p4 sig_type=std_logic lab=VOUT
}
C {devices/code_shown.sym} 1160 -1570 0 0 {name=s1 only_toplevel=false 
value="

.param T = 1.6u
.param Co = 119.8p
.tran 10p \{T\}
.save all
.ic v(vout) = 1
.control
run
meas tran teval WHEN v(vout) = 0.37
let res_val = 1000
let cap_val = teval/res_val
plot v(vin) v(vout) v(vout_c)
print cap_val
.endc
"}
C {vsource.sym} 2160 -1370 0 0 {name=V1V value=1 savecurrent=false}
C {lab_pin.sym} 2160 -1430 0 0 {name=p1 sig_type=std_logic lab=V1V}
C {gnd.sym} 2160 -1280 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 2030 -1590 0 0 {name=p2 sig_type=std_logic lab=V1V}
C {devices/res.sym} 1950 -1280 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1750 -1250 0 0 {name=V2 value="PULSE (1 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {devices/gnd.sym} 1750 -1200 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1890 -1280 1 0 {name=p5 sig_type=std_logic lab=VIN_C
}
C {devices/lab_pin.sym} 2010 -1280 3 0 {name=p6 sig_type=std_logic lab=VOUT_C
}
C {lab_pin.sym} 2040 -1360 0 0 {name=p7 sig_type=std_logic lab=V1V}
C {capa.sym} 2040 -1310 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {code.sym} 1150 -1260 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
*.lib cornerMOShv.lib mos_ss
*.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
*.lib $::SG13G2_MODELS/diodes.lib
"}
C {code.sym} 1280 -1260 0 0 {name=POWER_MOS_Param only_toplevel=false 

value="
*M1 hvPMOS
.param temp=27
.param mult_M1 = 12000
.param w_M1 =10u 
.param l_M1 = 0.4u
.param ng_M1 = 1

*M2 hvNMOS
.param mult_M2 = 4000
.param w_M2 =10u 
.param l_M2 =0.45u
.param ng_M2 =1




"}
C {sg13g2_pr/sg13_lv_pmos.sym} 2030 -1470 1 1 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
