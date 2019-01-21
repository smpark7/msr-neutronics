=t-newt

2-D MSFR core region

fine_n

read comp
'fuel
u-233  1 0 8.0683E-4 1030 end
th-232 1 0 5.3627E-3 1030 end
f-19   1 0 4.5928E-2 1030 end
li-7   1 0 2.1250E-2 1030 end

'struc
ni 2 0 6.9461E-2 1030 end
w  2 0 8.1892E-3 1030 end
cr 2 0 8.1071E-3 1030 end
al 2 0 6.6957E-4 1030 end
end comp

read model

6 group solution

read parm
drawit=yes prtbroad=yes cmfd=3 xycmfd=2 sn=8 converge=mix echo=yes inners=2 epsilon=1e-3
timed=yes prtmxsec=yes prtmxtab=yes prthmmix=no
end parm

read materials
  mix=1 pn=1 com="Fuel salt LiF-ThF4-233UF4" end
  mix=2 pn=1 com="Structural material" end
end materials

read collapse
  13r1 21r2 20r3 5r4 12r5 181r6
end collapse

read geom
  global unit 10
    cylinder 11 112.75 sides=128
'    cylinder 12 114.75 sides=128
    hexprism 12 114.75
    media 1 1 11
    media 2 1 12 -11
  boundary 12 4 4
end geom

read bounds
all=vacuum
end bounds
end model

end