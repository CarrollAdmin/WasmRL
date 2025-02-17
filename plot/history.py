import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator

datasets_native = ["O3", "BOCA", "ICMC", "AutoPhase", "CORL"]
datasets_wasm = ["O3", "AutoPhase", "WasmRL"]

native_efficiency = [1.0, 1.13, 1.20, 1.28, 1.32]
wasm_efficiency = [1.0, 1.26, 1.40]

colors = ['#B2182B', '#2166AC', '#92C5DE', '#F4A582']
hatch_pattern = ['///', '\\\\\\', '---', '...', '***']
width = 0.9  # bar的宽度
width1 = 1
startpos = 5
bar_width = 1.3

x = np.arange(20)

plt.rcParams['pdf.fonttype'] = 42 
fig, ax1 = plt.subplots(figsize=(6, 3), dpi=1000)

# Plot native efficiency bars
ax1.bar(x[1], native_efficiency[0], width=bar_width, label = "O3-Native",alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[0], hatch=hatch_pattern[0])
ax1.bar(x[3], native_efficiency[1], width=bar_width, label = "BOCA-Native", alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[0], hatch=hatch_pattern[1])
ax1.bar(x[5], native_efficiency[2], width=bar_width,  label = "ICMC-Native", alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[0], hatch=hatch_pattern[2])
ax1.bar(x[7], native_efficiency[3], width=bar_width, label = "AutoPhase-Native", alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[0], hatch=hatch_pattern[3])
ax1.bar(x[9], native_efficiency[4], width=bar_width, label = "CORL-Native", alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[0], hatch=hatch_pattern[4])

# Plot wasm efficiency bars
ax1.bar(x[13], wasm_efficiency[0], width=bar_width, label = "O3-Wasm", alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[1], hatch=hatch_pattern[0])
ax1.bar(x[15], wasm_efficiency[1], width=bar_width, label = "AutoPhase-Wasm", alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[1], hatch=hatch_pattern[1])
ax1.bar(x[17], wasm_efficiency[2], width=bar_width, label = "WasmRl-Wasm", alpha=1, zorder=15, linewidth=1, edgecolor='black',
        color=colors[1], hatch=hatch_pattern[2])

# Set the x-axis labels and ticks
ax1.set_xticks(x)
x_native = [x[4], x[5], x[6], x[7], x[8]]
x_wasm = [x[13], x[14], x[15]]
x_ticks_positions = x_native + x_wasm
# 构造一个长度为20的空字符串列表
x_ticks_labels = [''] * len(x)
x_ticks_labels[1] = 'O3'
x_ticks_labels[3] = 'BOCA'
x_ticks_labels[5] = 'ICMC'
x_ticks_labels[7] = 'AutoPhase'
x_ticks_labels[9] = 'CORL'
x_ticks_labels[13] = 'O3'
x_ticks_labels[15] = 'AutoPhase*'
x_ticks_labels[17] = 'WasmRL'
ax1.set_xticklabels(x_ticks_labels, rotation=30, fontsize=10, ha='right')  # 先将所有刻度的标签设置为空字符串

# Set y-axis range and labels
ax1.set_ylim(0, 1.6)
ax1.set_ylabel('Improvement', fontsize=14)
ax1.yaxis.set_major_locator(MultipleLocator(0.5))  # 设置y轴坐标显示倍数
ax1.tick_params(axis='y', labelsize=10)
ax1.grid(axis="both", linestyle='dotted', zorder=0)


# Add values above the bars
def add_values_to_bars(ax):
    for bar in ax.patches:
        height = bar.get_height()
        ax.annotate(f'{height:.2f}X', xy=(bar.get_x() + bar.get_width() / 2, height),
                    xytext=(0, 3), textcoords='offset points',
                    ha='center', va='bottom', fontsize=7)


add_values_to_bars(ax1)

# Add legend
plt.legend(loc='upper center', ncol=4, fontsize=9, bbox_to_anchor=(0.5, 1.35), frameon=False, handletextpad=0.5, columnspacing=0.9)

# Show the plot
plt.tight_layout()
plt.show()
plt.savefig("history1.pdf", bbox_inches='tight')
