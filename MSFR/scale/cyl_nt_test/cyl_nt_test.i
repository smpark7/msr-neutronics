'#TestGrep# "k-eff [=]" ${OUTPUTFILENAME}
'#TestGrep# -i "erro[r]" ${OUTPUTFILENAME} | ${GREP} -v "[W]arnings and [E]rrors"
'#TestGrep# "SCALE is finishe[d]" ${OUTPUTFILENAME} | ${AWK} "{print $1,$2,$3}"
'#TestGrep# "is finishe[d]\." ${OUTPUTFILENAME} | ${AWK} "{print $1,$2,$3,$4,$5,$6,$7}"
=t-newt

2-D MSFR core region

fine_n

read comp
'fuel
WTPTfuel 1 4.0751 4 92233 20.884 90232 37.508 3007 6.072 9019 35.536 1.0 1030 end
end comp

read model

1 group solution

read parm
solntype=b1
collapse=yes
prtmxsec=yes
' prtbroad=yes
' prthmmix=yes
' prtflux=yes
end parm

read hmog
500 fuel 1 end
end hmog

read materials
  mix=1 pn=1 com="Fuel salt LiF-ThF4-233UF4" end
end materials

read collapse
  252r1
end collapse

read geom
  global unit 10
    cylinder 11 50. sides=128
    hexprism 12 51.
    media 1 1 11
    media 1 1 12 -11
  boundary 12 4 4
end geom

read bounds
all=vacuum
end bounds

end model
end