import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets = ["2mm", "3mm", "adi", "atax", "bicg", "cholesky", "correlation", "covariance", "deriche", "doitgen",
"durbin","fdtd-2d","floyd-warshall","gemm","gemver","gesummv","gramschmidt","heat-3d","jacobi-1d","jacobi-2d"]
O3 = [0.629032258,
0.73458445,
0.5,
0.556675063,
0.592050209,
0.698224852,
0.62979684,
0.787439614,
0.557823129,
0.787234043,
0.618589744,
0.7616,
0.448,
0.56,
0.670120898,
0.654135338,
0.802259887,
0.522167488,
0.711297071,
0.674193548

]
AutoPhase = [0.519354839,
0.554959786,
0.383613445,
0.531486146,
0.49790795,
0.633136095,
0.309255079,
0.652173913,
0.448979592,
0.497340426,
0.594551282,
0.3696,
0.448,
0.498181818,
0.528497409,
0.541353383,
0.570621469,
0.277093596,
0.556485356,
0.432258065

]
WasmRL = [0.480645161,
0.460321716,
0.321428571,
0.435768262,
0.313807531,
0.571597633,
0.251693002,
0.618357488,
0.387755102,
0.417553191,
0.181891026,
0.2064,
0.44,
0.494545455,
0.210708117,
0.380952381,
0.553672316,
0.251231527,
0.479079498,
0.412903226
]

color = ['#B2182B', '#2166AC', '#92C5DE']

xticks = np.arange(len(datasets))
width = 0.2


plt.rcParams['pdf.fonttype'] = 42 
fig, ax = plt.subplots(figsize=(30, 8), dpi=1000)
ax.grid(axis="both", linestyle='dotted', zorder=0)
ax.bar(xticks - width, O3, width=width, label="O3", color=color[0], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax.bar(xticks, AutoPhase, width=width, label="AutoPhase*", color=color[1], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax.bar(xticks + width, WasmRL, width=width, label="WasmRL", color=color[2], alpha=1, zorder=15, linewidth=1, edgecolor='black')

ax.set_ylabel("Relative execution time\n(O0=1)", fontsize=35)
plt.legend(loc='upper center', ncol=3, fontsize=35, bbox_to_anchor=(0.5, 1.15), frameon=False, handletextpad=0.5)
ax.set_ylim([0, 1])
ax.yaxis.set_major_locator(MultipleLocator(0.2)) # 设置y轴坐标显示倍数
ax.yaxis.set_tick_params(labelsize=35)
ax.set_xticks(xticks, datasets, rotation=35, fontsize=35, ha='right')

# plt.tick_params(labelsize=35)
plt.show()
plt.savefig("overall_rasp_training.pdf", bbox_inches='tight')
plt.close()
