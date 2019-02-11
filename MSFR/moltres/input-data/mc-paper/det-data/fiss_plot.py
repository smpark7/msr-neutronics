import math
import numpy as np
import scipy
import matplotlib.pyplot as plt
from matplotlib import rcParams, cm
from pyne import serpent
from pyne import nucname

data = serpent.parse_det('MSFR_base_det_pow_det1b1.m')

x_pow = data['DETfisxyX']
y_pow = data['DETfisxyY']
z_pow = data['DETfisxzZ']
fission = data['DETfisxy']
#fission_den = np.reshape(fission.reshape((57600,12))[:,10], \
#                         (len(x_pow), len(y_pow))) \
#                         / max(fission.reshape((57600,12))[:,10])
#
#fig, ax = plt.subplots(1,1,figsize=(12,10))
#c = ax.pcolor(fission_den,cmap=cm.viridis)
#fig.colorbar(c, ax=ax)