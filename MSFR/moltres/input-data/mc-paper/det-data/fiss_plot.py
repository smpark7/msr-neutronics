import math
import numpy as np
import scipy
import matplotlib.pyplot as plt
from matplotlib import rcParams, cm
from pyne import serpent
from pyne import nucname

data = serpent.parse_det('MSFR_det_single_run_det0.m')

x_pow = data['DETfisxyX']
y_pow = data['DETfisxyY']
z_pow = data['DETfisxzZ']
fissionx = data['DETfisxy']
n = len(x_pow) * len(y_pow)
m = len(x_pow) * len(z_pow)
fissionx_den = np.reshape(fissionx.reshape((n,12))[:,10], \
                         (len(x_pow), len(y_pow))) \
                         #/ max(fission.reshape((57600,12))[:,10])
fissionz = data['DETfisxz']
fissionz_den = np.reshape(fissionz.reshape((m,12))[:,10], \
                         (len(z_pow), len(x_pow))) \


fig, ax = plt.subplots(1,1,figsize=(12,10))
c = ax.pcolor(fissionx_den,cmap=cm.viridis)
fig.colorbar(c, ax=ax)
plt.savefig("powerxy.png", dpi=600)

fig, ax = plt.subplots(1,1,figsize=(12,10))
c = ax.pcolor(fissionz_den,cmap=cm.viridis)
fig.colorbar(c, ax=ax)
plt.savefig("powerxz.png", dpi=600)