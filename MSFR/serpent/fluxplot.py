import matplotlib.pyplot as plt

flux = [1.20827e21, 4.75379e21, 1.16262e22, 7.92847e21, 5.00185e21, 1.18382e21]
energy = [1e-11, 748.5e-6, 5.5308e-3, 24.7875e-3, 0.4979, 2.2313, 20.]

area = 0
for i in range(len(flux)):
    area += flux[i] * (energy[i+1]-energy[i])

flux = [i / area for i in flux]

flx = []
ene = []
for i in range(len(flux)):
    flx.append(flux[i])
    flx.append(flux[i])
    ene.append(energy[i])
    ene.append(energy[i+1])

plt.figure(figsize=(10,7))
plt.plot(ene,flx)
plt.xscale("log")
plt.xlim((1e-5, 1e1))