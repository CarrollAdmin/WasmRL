import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets = [
"compression",
"heat_calib",
"heat_detect",
"img_quality",
"face_detection",
"emqx_mqtt"

]
O3 = [0.690677966,
0.796688742,
0.651995373,
0.5428051,
0.771695594,
0.937677054


]
AutoPhase = [0.245338983,
0.553642384,
0.444476576,
0.302003643,
0.470761015,
0.909348442



]
WasmRL = [0.163983051,
0.561589404,
0.43637941,
0.1428051,
0.319359146,
0.895184136


]

# xticks = np.arange(len(datasets))
# fig, ax = plt.subplots(figsize=(15, 8))
# ax.grid(axis='y',color = 'black',linewidth = 1, zorder=0)
# ax.bar(xticks, O3, width=0.15, label="O3", color="brown", zorder=10)
# ax.bar(xticks + 0.17, AutoPhase, width=0.15, label="AutoPhase", color="steelblue", zorder=10)
# ax.bar(xticks + 0.34, WasmRL, width=0.15, label="WasmRL", color="darkorange", zorder=10)

# # ax.set_xlabel("Domains", fontsize=24)
# ax.set_ylabel("Relative execution time\n(O0=1)", fontsize=30)
# ax.legend(loc=1, ncol=3, bbox_to_anchor=(0.9, 1), bbox_transform=ax.transAxes, prop={'size': 25})
# ax.set_ylim([0, 1])
# ax.set_xticks(xticks + 0.2)
# ax.set_xticklabels(datasets, fontsize=40, rotation=45, ha='right') 
# plt.tick_params(labelsize=35)
# plt.show()
# plt.savefig("overall_rasp_iot.png", bbox_inches='tight')
# plt.close()

color = ['#B2182B', '#2166AC', '#92C5DE']

xticks = np.arange(len(datasets))
width = 0.12


plt.rcParams['pdf.fonttype'] = 42 
fig, ax = plt.subplots(figsize=(15, 8), dpi=1000)
ax.grid(axis="both", linestyle='dotted', zorder=0)
ax.bar(xticks - width, O3, width=width, label="O3", color=color[0], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax.bar(xticks, AutoPhase, width=width, label="AutoPhase*", color=color[1], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax.bar(xticks + width, WasmRL, width=width, label="WasmRL", color=color[2], alpha=1, zorder=15, linewidth=1, edgecolor='black')

# ax.set_xlabel("Domains", fontsize=24)
ax.set_ylabel("Relative execution time\n(O0=1)", fontsize=35)
plt.legend(loc='upper center', ncol=3, fontsize=30, bbox_to_anchor=(0.5, 1.14), frameon=False, handletextpad=0.5)
ax.set_ylim([0, 1])
ax.yaxis.set_major_locator(MultipleLocator(0.2)) # 设置y轴坐标显示倍数
ax.yaxis.set_tick_params(labelsize=25)
ax.set_xticks(xticks, datasets, rotation=35, fontsize=30, ha='right')
# plt.tick_params(labelsize=35)
plt.show()
plt.savefig("overall_rasp_iot.pdf", bbox_inches='tight')
plt.close()