import numpy as np

file_name = 'msfr_temp_fuel_Sp0.txt'

file = open(file_name, 'r')

sp0 = []

for line in file:
    sp00 = [float(i) for i in line.split()]
    sp0.append(sp00)

sp0 = [i[1:] for i in sp0]
final = [np.array(i).reshape((6,6)) for i in sp0]

for i in range(len(sp0)):
    print(final[i])
    print()