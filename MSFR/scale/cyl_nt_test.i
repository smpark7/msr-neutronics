=t-newt

2-D MSFR core region

fine_n

read comp
'fuel
u-233  1 0 8.0683E-4 1030 end
th-232 1 0 5.3627E-3 1030 end
f-19   1 0 4.5928E-2 1030 end
li-7   1 0 2.1250E-2 1030 end
end comp

read model

1 group solution

read parm
drawit=yes prtbroad=yes cmfd=3 xycmfd=2 sn=8 converge=mix echo=yes inners=2 epsilon=1e-3
timed=yes prtmxsec=no prtmxtab=yes prthmmix=no
end parm

read materials
  mix=1 pn=1 com="Fuel salt LiF-ThF4-233UF4" end
end materials

read collapse
  252r1
end collapse

read geom
  global unit 10
    cylinder 11 50. sides=128
    media 1 1 11
  boundary 11 2 2
end geom

read bounds
all=vacuum
end bounds
end model

end