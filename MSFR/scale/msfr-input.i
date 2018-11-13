=t-xsec

2-D MSFR fuel with Ni-alloy structure

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

end

=newt

2-D MSFR core region

read materials
mix=1 pn=1 end
mix=2 pn=1 end
end materials

read collapse
13r1 21r2 20r3 5r4 12r5 181r6
end collapse

read geom
global unit 10
cylinder 11 112.75 sides=24
cylinder 12 114.75 sides=24
media 1 1 11
media 2 1 12 -11
boundary 12 2 2
end geom

read bounds
all=vacuum
end bounds

end