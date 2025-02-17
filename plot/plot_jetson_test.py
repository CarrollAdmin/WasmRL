import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets = ["lu", "ludcmp", "mvt", "nussinov", "seidel-2d", "symm", "syr2k", "syrk", "trisolv", "trmm"]
O3 = [0.643512451,
0.858958069,
0.518,
0.196428571,
0.458992806,
0.611353712,
0.707317073,
0.661538462,
0.693939394,
0.688559322

]
AutoPhase = [0.572739187,
0.569250318,
0.576,
0.205357143,
0.381294964,
0.550218341,
0.571428571,
0.571794872,
0.618181818,
0.665254237


]
WasmRL = [0.514416776,
0.557179161,
0.512,
0.191964286,
0.369784173,
0.550218341,
0.526132404,
0.582051282,
0.584848485,
0.436440678

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
plt.savefig("overall_jetson_test.pdf", bbox_inches='tight')
plt.close()