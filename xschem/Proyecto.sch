v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 270 -440 270 -30 {}
L 4 270 -30 620 -30 {}
L 4 620 -440 620 -30 {}
L 4 270 -440 620 -440 {}
L 4 -180 -440 -180 -320 {}
L 4 110 -440 110 -320 {}
L 4 -180 -440 110 -440 {}
L 4 -180 -320 110 -320 {}
L 4 -180 -320 -180 -160 {}
L 4 -180 -160 110 -160 {}
L 4 110 -320 110 -160 {}
L 4 -180 -160 -180 0 {}
L 4 -180 0 110 0 {}
L 4 110 -160 110 0 {}
T {Pasos de diseño:} 290 -430 0 0 0.4 0.4 {}
T {Ecuaciones:
} -170 -310 0 0 0.4 0.4 {}
T {Especificaciones:
} -170 -150 0 0 0.4 0.4 {}
T {pJ/Op  <=
fop       >=
\\mu W <= 
Cl           = 20fF
} -160 -110 0 0 0.3 0.3 {}
T {t_reg = Cx/(gm1(1-Cx/Cp))
Av = gm1*rds1} -170 -270 0 0 0.3 0.3 {}
C {TB/TB_Tran_SA.sym} -50 -400 0 0 {name=x1}
C {/workspaces/usm-vlsi-tools/shared_xserver/proyecto-IPD413/xschem/TB/TB_Op_SA.sym} -30 -360 0 0 {name=x2}
C {title.sym} -200 130 0 0 {name=l1 author="Felipe Illanes - Sebastián Sánchez"}
