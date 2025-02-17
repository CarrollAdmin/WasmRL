import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets = [
"lu",
"ludcmp",
"mvt",
"nussinov",
"seidel-2d",
"symm",
"syr2k",
"syrk",
"trisolv",
"trmm",
"dijkstra",
"patricia",
"stringsearch1",
"blowfish_d",
"rijndael_d",
"sha",
"dpcm_c",
"CRC32",
"gimli",
"matrix",
"memmove",
"random",
"average"
]

O3 = [
0.43,
1.018867925,
0.538461538,
0.153846154,
0.406060606,
0.6,
1.056603774,
0.385964912,
0.706896552,
0.658823529,
1.0609319,
0.393873085,
0.593779453,
0.661392405,
0.317073171,
1.014227642,
0.74218396,
0.770379747,
0.880782918,
0.867595819,
1.035856574,
0.962184874
]
O3.append(sum(O3)/len(O3))
WasmRL = [
0.41,
0.51572327,
0.527472527,
0.131868132,
0.254545455,
0.533333333,
0.566037736,
0.298245614,
0.724137931,
0.552941176,
0.845878136,
0.357403355,
0.770028275,
0.612869198,
0.328687573,
0.863821138,
0.614861803,
0.608101266,
0.419928826,
0.839721254,
0.876494024,
0.915966387



]
WasmRL.append(sum(WasmRL)/len(WasmRL))

color = ['#B2182B', '#2166AC', '#92C5DE']

xticks = np.arange(len(datasets))
width = 0.25


plt.rcParams['pdf.fonttype'] = 42 
fig, ax = plt.subplots(figsize=(39, 6), dpi=1000)
ax.grid(axis="both", linestyle='dotted', zorder=0)
ax.bar(xticks - 0.5 *width, O3, width=width, label="O3", color=color[0], alpha=1, zorder=15, linewidth=1, edgecolor='black')
ax.bar(xticks + 0.5 * width, WasmRL, width=width, label="WasmRL", color=color[1], alpha=1, zorder=15, linewidth=1, edgecolor='black')

# ax.set_xlabel("Domains", fontsize=24)
ax.set_ylabel("Relative execution time\n(O0=1)", fontsize=35)
plt.legend(loc='upper center', ncol=3, fontsize=35, bbox_to_anchor=(0.5, 1.2), frameon=False, handletextpad=0.5)
ax.set_ylim([0, 1.15])
ax.yaxis.set_major_locator(MultipleLocator(0.2)) # 设置y轴坐标显示倍数
ax.yaxis.set_tick_params(labelsize=35)
ax.set_xticks(xticks, datasets, rotation=35, fontsize=35, ha='right')
# plt.tick_params(labelsize=35)
plt.show()
plt.savefig("overall_jetson_benchmark_test.pdf", bbox_inches='tight')
plt.close()