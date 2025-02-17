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

# aot raspberry

O3 = [0.333333333,
0.990909091,
0.941964286,
0.346153846,
0.627329193,
0.983018868


]
AutoPhase = [0.313131313,
0.972727273,
0.955357143,
0.355897436,
0.608695652,
0.950471698




]
WasmRL = [0.282828283,
0.972727273,
0.901785714,
0.303333333,
0.534161491,
0.924528302

]

# aot jetson


# O3 = [0.294117647,
# 1.201754386,
# 1.048582996,
# 0.276119403,
# 0.614349776,
# 0.989924433


# ]

# AutoPhase = [0.272058824,
# 1.149122807,
# 0.939271255,
# 0.268656716,
# 0.547085202,
# 0.994962217

# ]

# WasmRL = [0.286764706,
# 0.98245614,
# 0.87854251,
# 0.223880597,
# 0.529147982,
# 0.974811083


# ]

color = ['#B2182B', '#2166AC', '#92C5DE']

xticks = np.arange(len(datasets))
width = 0.14


plt.rcParams['pdf.fonttype'] = 42 
fig, ax = plt.subplots(figsize=(15, 8), dpi=100)
ax.grid(axis="both", linestyle='dotted', zorder=0)
ax.bar(xticks - 1*width, O3, width=width, label="O3", color=color[0], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax.bar(xticks, AutoPhase, width=width, label="AutoPhase*", color=color[1], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax.bar(xticks + 1*width, WasmRL, width=width, label="WasmRL", color=color[2], alpha=1, zorder=15, linewidth=1, edgecolor='black')

# ax.set_xlabel("Domains", fontsize=24)
ax.set_ylabel("Relative execution time\n(O0=1)", fontsize=35)
plt.legend(loc='upper center', ncol=3, fontsize=30, bbox_to_anchor=(0.5, 1.14), frameon=False, handletextpad=0.5)
ax.set_ylim([0, 1])
ax.yaxis.set_major_locator(MultipleLocator(0.2)) # 设置y轴坐标显示倍数
ax.yaxis.set_tick_params(labelsize=25)
ax.set_xticks(xticks, datasets, rotation=35, fontsize=30, ha='right')
# plt.tick_params(labelsize=35)
plt.show()
plt.savefig("aot_rasp.pdf", bbox_inches='tight')
plt.close()