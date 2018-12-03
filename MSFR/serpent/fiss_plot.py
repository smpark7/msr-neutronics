import math
import numpy as np
import scipy
import matplotlib.pyplot as plt
from matplotlib import rcParams, cm
from pyne import serpent
from pyne import nucname

data = serpent.parse_det('MSFR_fuelcore_2g_det1b4.m')

fission = data['DETfisxy']
fission_den = np.reshape(fission[:,10], (240, 240))

fig, ax = plt.subplots(1,1,figsize=(17,13))
ax.pcolor(fission_den,cmap=cm.viridis)