import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets = ["lu", "ludcmp", "mvt", "nussinov", "seidel-2d", "symm", "syr2k", "syrk", "trisolv", "trmm"]
O3 = [0.638146168,
0.94095941,
0.606557377,
0.236111111,
0.530214425,
0.632978723,
0.6375,
0.696969697,
0.775590551,
0.754929577

]
AutoPhase = [0.659536542,
0.731549815,
0.68579235,
0.263888889,
0.426900585,
0.781914894,
0.620833333,
0.678787879,
0.748031496,
0.757746479


]
WasmRL = [0.648841355,
0.70295203,
0.661202186,
0.255555556,
0.426900585,
0.632978723,
0.616666667,
0.636363636,
0.669291339,
0.726760563

]

# xticks = np.arange(len(datasets))
# fig, ax = plt.subplots(figsize=(15, 8))
# ax.grid(axis='y',color = 'black',linewidth = 1, zorder=0)
# ax.bar(xticks, O3, width=0.15, label="O3", color="brown", zorder=10)
# ax.bar(xticks + 0.17, AutoPhase, width=0.15, label="AutoPhase", color="steelblue", zorder=10)
# ax.bar(xticks + 0.34, WasmRL, width=0.15, label="WasmRL", color="darkorange", zorder=10)

# # ax.set_xlabel("Domains", fontsize=24)
# ax.set_ylabel("Relative execution time\n(O0=1)", fontsize=30)
# ax.legend(loc=1, ncol=2, bbox_to_anchor=(0.9, 1), bbox_transform=ax.transAxes, prop={'size': 25})
# ax.set_ylim([0, 1])
# ax.set_xticks(xticks + 0.2)
# ax.set_xticklabels(datasets, fontsize=40, rotation=45, ha='right') 
# plt.tick_params(labelsize=35)
# plt.show()
# plt.savefig("overall_jetson_test.png", bbox_inches='tight')
# plt.close()

color = ['#B2182B', '#2166AC', '#92C5DE']

xticks = np.arange(len(datasets))
width = 0.2

plt.rcParams['pdf.fonttype'] = 42 
fig, ax = plt.subplots(figsize=(15, 8), dpi=1000)
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
plt.savefig("overall_rasp_test.pdf", bbox_inches='tight')
plt.close()