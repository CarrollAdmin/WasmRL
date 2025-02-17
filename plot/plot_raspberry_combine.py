import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

# Your data and configurations for the first plot
datasets1 = ["2mm", "3mm", "adi", "atax", "bicg", "cholesky", "correlation", "covariance", "deriche", "doitgen", "durbin", "fdtd-2d", "floyd-warshall", "gemm", "gemver", "gesummv", "gramschmidt", "heat-3d", "jacobi-1d", "jacobi-2d"]
O31 = [0.629032258, 0.73458445, 0.5, 0.556675063, 0.592050209, 0.698224852, 0.62979684, 0.787439614, 0.557823129, 0.787234043, 0.618589744, 0.7616, 0.448, 0.56, 0.670120898, 0.654135338, 0.802259887, 0.522167488, 0.711297071, 0.674193548]
AutoPhase1 = [0.519354839, 0.554959786, 0.383613445, 0.531486146, 0.49790795, 0.633136095, 0.309255079, 0.652173913, 0.448979592, 0.497340426, 0.594551282, 0.3696, 0.448, 0.498181818, 0.528497409, 0.541353383, 0.570621469, 0.277093596, 0.556485356, 0.432258065]
WasmRL1 = [0.480645161, 0.560321716, 0.321428571, 0.435768262, 0.313807531, 0.671597633, 0.251693002, 0.618357488, 0.387755102, 0.417553191, 0.181891026, 0.2064, 0.44, 0.494545455, 0.210708117, 0.380952381, 0.553672316, 0.251231527, 0.479079498, 0.412903226]

# Your data and configurations for the second plot
datasets2 = ["lu", "ludcmp", "mvt", "nussinov", "seidel-2d", "symm", "syr2k", "syrk", "trisolv", "trmm"]
O32 = [0.638146168, 0.94095941, 0.606557377, 0.236111111, 0.530214425, 0.632978723, 0.6375, 0.696969697, 0.775590551, 0.754929577]
AutoPhase2 = [0.659536542, 0.731549815, 0.68579235, 0.263888889, 0.426900585, 0.781914894, 0.620833333, 0.678787879, 0.748031496, 0.757746479]
WasmRL2 = [0.648841355, 0.70295203, 0.661202186, 0.255555556, 0.426900585, 0.632978723, 0.616666667, 0.636363636, 0.669291339, 0.726760563]

# Create a single figure with two subplots
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(20, 8), dpi=1000)

# Plot the first bar chart on ax1
color = ['#B2182B', '#2166AC', '#92C5DE']
xticks1 = np.arange(len(datasets1))
width = 0.2
ax1.grid(axis="both", linestyle='dotted', zorder=0)
ax1.bar(xticks1 - width, O31, width=width, label="O3", color=color[0], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax1.bar(xticks1, AutoPhase1, width=width, label="AutoPhase", color=color[1], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax1.bar(xticks1 + width, WasmRL1, width=width, label="WasmRL", color=color[2], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax1.set_ylabel("Relative execution time\n(O0=1)", fontsize=30)
ax1.set_ylim([0, 1])
ax1.yaxis.set_major_locator(MultipleLocator(0.2)) # Set y-axis tick intervals
ax1.set_xticks(xticks1)
ax1.set_xticklabels(datasets1, rotation=30, fontsize=25, ha='right')

# Plot the second bar chart on ax2
xticks2 = np.arange(len(datasets2))
ax2.grid(axis="both", linestyle='dotted', zorder=0)
ax2.bar(xticks2 - width, O32, width=width, label="O3", color=color[0], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax2.bar(xticks2, AutoPhase2, width=width, label="AutoPhase", color=color[1], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax2.bar(xticks2 + width, WasmRL2, width=width, label="WasmRL", color=color[2], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax2.set_ylabel("Relative execution time\n(O0=1)", fontsize=30)
ax2.set_ylim([0, 1])
ax2.yaxis.set_major_locator(MultipleLocator(0.2)) # Set y-axis tick intervals
ax2.set_xticks(xticks2)
ax2.set_xticklabels(datasets2, rotation=30, fontsize=25, ha='right')

# Add a common legend for both subplots
fig.legend(loc='upper center', ncol=3, fontsize=20, bbox_to_anchor=(0.5, 1.08), frameon=False, handletextpad=0.5)

# Adjust spacing between subplots and save the figure
plt.tight_layout()
plt.savefig("combine.png", bbox_inches='tight')
plt.show()
plt.close()
