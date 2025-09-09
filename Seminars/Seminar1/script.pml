# run script.pml

reinitialize

cd ~/Desktop/MIPT/MolMod-2025/Seminars/Seminar1/Data
load 8U4D.pdb, rTRPV1

sele res_vbp, resi 511+512+557+570+700 and chain A
sele pi, resn VPN
show sticks, res_vbp or pi
hide (hydro)

color yellow, ss h
color purple, ss s
color hotpink, pi
util.cnc("all")
util.cbac res_vbp
set cartoon_oval_length, 0.7
set cartoon_transparency, 0.1

dist dist_pi_511, chain A and pi and name P27, chain A and resi 511 and name CA

set_view (\
     0.935722589,   -0.092991337,   -0.340250790,\
    -0.340749979,    0.010948414,   -0.940089166,\
     0.091144502,    0.995606720,   -0.021443604,\
     0.000000000,    0.000000000,  -72.126213074,\
   110.513000488,  147.121994019,  138.856002808,\
    55.261604309,   88.990791321,  -20.000000000 )

ray 1000,1000
save rTRPV1.png
save rTRPV1.pse