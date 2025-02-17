import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets = ["2mm", "3mm", "adi", "atax", "bicg", "cholesky", "correlation", "covariance", "deriche", "doitgen",
"durbin","fdtd-2d","floyd-warshall","gemm","gemver","gesummv","gramschmidt","heat-3d","jacobi-1d","jacobi-2d"]
O3 = [0.612903226,
0.660660661,
0.48957529,
0.51734104,
0.542586751,
0.71559633,
0.639097744,
0.759541985,
0.470046083,
0.722689076,
0.625,
0.783751493,
0.447098976,
0.548672566,
0.725333333,
0.646365422,
0.884792627,
0.487427466,
0.716171617,
0.685333333

]
AutoPhase = [0.537634409,
0.574574575,
0.236293436,
0.335260116,
0.487381703,
0.619266055,
0.237593985,
0.522900763,
0.352534562,
0.495798319,
0.714285714,
0.341696535,
0.440273038,
0.445427729,
0.502666667,
0.42043222,
0.506912442,
0.214700193,
0.603960396,
0.438666667

]
WasmRL = [0.36827957,
0.356356356,
0.203861004,
0.234489403,
0.329652997,
0.550458716,
0.237593985,
0.464885496,
0.311059908,
0.397058824,
0.207908163,
0.338112306,
0.399317406,
0.407079646,
0.230666667,
0.373280943,
0.497695853,
0.185686654,
0.561056106,
0.362666667


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

# ax.set_xlabel("Domains", fontsize=24)
ax.set_ylabel("Relative execution time\n(O0=1)", fontsize=35)
plt.legend(loc='upper center', ncol=3, fontsize=35, bbox_to_anchor=(0.5, 1.15), frameon=False, handletextpad=0.5)
ax.set_ylim([0, 1])
ax.yaxis.set_major_locator(MultipleLocator(0.2)) # 设置y轴坐标显示倍数
ax.yaxis.set_tick_params(labelsize=35)
ax.set_xticks(xticks, datasets, rotation=35, fontsize=35, ha='right')
# plt.tick_params(labelsize=35)
plt.show()
plt.savefig("overall_jetson_training.pdf", bbox_inches='tight')
plt.close()