import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets = [
"2mm",
"3mm",
"adi",
"atax",
"bicg",
"cholesky",
"correlation",
"covariance",
"deriche",
"doitgen",
"durbin",
"fdtd-2d",
"floyd-warshall",
"gemm",
"gemver",
"gesummv",
"gramschmidt",
"heat-3d",
"jacobi-1d",
"jacobi-2d",
"bitcount", 
"qsort1",
"susan_c",
"jpeg_c", 
"jpeg_d", 
"tiff2bw", 
"tiffdither",
"tiffmedian",
"base64",
"ctype",
"fib2",
"average"

]
O3 = [
1,
0.454545455,
0.470588235,
0.943089431,
1.058333333,
0.58974359,
0.595238095,
0.598425197,
0.5,
0.510638298,
1.50877193,
0.984771574,
0.388888889,
0.804878049,
0.570621469,
0.62,
0.794871795,
0.440366972,
0.309090909,
0.625,
0.988826816,
1.090301003,
0.741433022,
1.071593533,
0.82830385,
0.777548919,
1.149090909,
0.590968161,
0.926045016,
0.667546174,
0.860119048

]
O3.append(sum(O3)/len(O3))
WasmRL = [
0.923076923,
0.439393939,
0.369747899,
0.382113821,
0.458333333,
0.487179487,
0.293650794,
0.212598425,
0.459459459,
0.34751773,
0.649122807,
0.324873096,
0.37037037,
0.203252033,
0.446327684,
0.52,
0.435897436,
0.146788991,
0.3,
0.347222222,
0.65698324,
0.789297659,
0.091727241,
0.48960739,
0.768990635,
0.701338826,
0.938181818,
0.497725796,
0.900321543,
0.601583113,
0.648809524


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
plt.savefig("overall_jetson_benchmark_training.pdf", bbox_inches='tight')
plt.close()