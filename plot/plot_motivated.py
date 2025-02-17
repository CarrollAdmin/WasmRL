import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator

datasets = ["2mm", "3mm", "adi", "atax", "bicg", "cholesky", "correlation", "covariance", "deriche", "doitgen"]
pass_1 = [1.230228471, 0.914257228, 1.000226424, 1.387212024, 1.007702442, 1.17522245, 1.711884865, 1.216097492, 0.918778153, 0.910358566]
pass_2 = [0.882601054, 1.039880359, 0.957319144, 1.283725514, 1.233404277, 1.00513347, 0.779294336, 1.309338246, 0.965653153, 1.18625498]
pass_3 = [0.83678969, 0.793818544, 0.727272727, 1.394603918, 1.158406811, 1.399383984, 1.235840297, 0.947286382, 1.20213964, 0.903386454]
pass_4 = [1.058699473, 0.925024925, 0.848522586, 1.076259702, 0.989713185, 0.931382615, 0.56369545, 0.867649143, 0.795199887, 1.329681275]
pass_5 = [0.874997071, 1.352941176, 0.76667044, 0.863496366, 0.967264619, 1.68908282, 0.859795729, 1.297151764, 1.158783784, 0.909960159]

cr = []
for i in range(10):
    cr.append(pass_1[i])
    cr.append(pass_2[i])
    cr.append(pass_3[i])
    cr.append(pass_4[i])
    cr.append(pass_5[i])

width = 5 # bar的宽度
width1 = 5 # bar的间隔宽度
width2 = 0 # 每一类的间隔宽度
capsize = 3
elinewidth = 1
error_params1=dict(elinewidth=elinewidth,ecolor='black',capsize=capsize)#设置误差标记参数
error_params2=dict(elinewidth=0.5,ecolor='black',capsize=1)#设置误差标记参数
x = []
start_pos = 0
num = 0
x1 = []
for i in range(10 * 5):
    num += 1
    x.append(start_pos + i*width1 + width2)
    if num % 5 == 0:
        width2 += 10
        
labels = ['xdelta', 'bsdiff', 'archive-patcher', 'HDiffPatch']
# color = ['#B2182B', '#2166AC', '#92C5DE','#F4A582']
color = ["#B2182B", "#F4A582", "#ffffbf", "#92C5DE", "#2166AC"]
plt.rcParams['font.sans-serif'] = ['Arial']
plt.rcParams['xtick.direction'] = 'out' # 坐标轴朝外
fig, ax1 = plt.subplots(figsize=(12, 4), dpi=1000)

passes = ['seq.1', 'seq.2', 'seq.3', 'seq.4', 'seq.5']
i = 0
while i < 5 * 10:
    ax1.bar(x[i], cr[i], width=width, label=passes[i%5], color=color[i%5], alpha=1, zorder=15, linewidth=1, edgecolor='black')
    i += 1
    if i == 5:
        ax1.axhline(y=1, color='red', linestyle='dashed', linewidth=4, label='Baseline (-O3)')
        plt.legend(loc='upper center', ncol=6, fontsize=15, bbox_to_anchor=(0.5, 1.18), frameon=False, handletextpad=0.5, columnspacing=1)

x1 = []
for i in range(5*10):
    num += 1
    x.append(start_pos + i*width1 + width2)
    if num % 5 == 0:
        width2 += 10
    if i % 5 == 2:
        x1.append((x[i - 1] + x[i])/2)

ax1.set_xticks(x1, datasets, rotation=30, fontsize=25, ha='right')
ax1.set_ylabel("Relative Execution Time \n(O3=1)", fontsize=24)
# ax1.set_xlabel('Selected Benchmarks', fontsize=25)
plt.yticks(fontsize=20)
ax1.set_ylim([0, 1.8])
ax1.yaxis.set_major_locator(MultipleLocator(0.2)) # 设置y轴坐标显示倍数
ax1.grid(axis="both", linestyle='dotted', zorder=0)
# plt.tight_layout()
plt.savefig('overall.pdf', bbox_inches = 'tight')

# xticks = np.arange(len(datasets))
# fig, ax = plt.subplots(figsize=(22, 12))
# ax.grid(axis='y',color = 'black',linewidth = 1, zorder=0)
# ax.bar(xticks, pass_1, width=0.11, label="pass_1", color="brown", zorder=10)
# ax.bar(xticks + 0.12, pass_2, width=0.12, label="pass_2", color="steelblue", zorder=10)
# ax.bar(xticks + 0.24, pass_3, width=0.11, label="pass_3", color="darkorange", zorder=10)
# ax.bar(xticks + 0.36, pass_4, width=0.11, label="pass_4", color="purple", zorder=10)
# ax.bar(xticks + 0.48, pass_5, width=0.11, label="pass_5", color="darkgreen", zorder=10)

# # Add a horizontal line at y=1
# ax.axhline(y=1, color='red', linestyle='dashed', linewidth=6, label='Baseline (-O3)')

# # ax.set_xlabel("Domains", fontsize=24)
# ax.set_ylabel("Relative Execution Time \n(O3=1)", fontsize=35)
# ax.legend(loc=1, ncol=3, bbox_to_anchor=(0.575, 0.98), bbox_transform=ax.transAxes, prop={'size': 25})
# ax.set_ylim([0.5, 1.9])
# ax.set_xticks(xticks + 0.2)
# ax.set_xticklabels(datasets, fontsize=24, rotation=45, ha='right') 
# plt.tick_params(labelsize=35)
# plt.show()
# plt.savefig("overall.png", bbox_inches='tight')
# plt.close()
