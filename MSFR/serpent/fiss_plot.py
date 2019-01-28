import math
import numpy as np
import scipy
import matplotlib.pyplot as plt
from matplotlib import rcParams, cm
from pyne import serpent
from pyne import nucname

data = serpent.parse_det('MSFR_fuelcore_2g_det1b4.m')

x_pow = data['DETfisxyX']
y_pow = data['DETfisxyY']
fission = data['DETfisxy']
fission_den = np.reshape(fission[:,2], (len(x_pow), len(y_pow)))

fig, ax = plt.subplots(1,1,figsize=(17,13))
ax.pcolor(fission_den,cmap=cm.viridis)