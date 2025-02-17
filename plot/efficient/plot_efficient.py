import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator

file1_data = []
with open("reward_2mm_base.txt", "r") as file1:
    for line in file1:
        _, reward = line.strip().split(": ")
        file1_data.append(float(reward))


file2_data = []
with open("reward_2mm_efficient.txt", "r") as file2:
    for line in file2:
        _, reward = line.strip().split(": ")
        file2_data.append(float(reward))


x = list(range(0, 0+ len(file1_data)))

color = ['#B2182B', '#2166AC', '#92C5DE','#F4A582']

plt.rcParams['pdf.fonttype'] = 42 
fig, ax1 = plt.subplots(figsize=(6, 4), dpi=1000)

ax1.plot(x, file1_data, label="ours w/o. tree-based model", linewidth=3, color=color[0], alpha=1)
ax1.plot(x, file2_data, label="ours w. tree-based model", linewidth=3, color=color[1], alpha=1)


plt.legend(fontsize=15)
plt.xlabel("Episode", fontsize=20)
plt.ylabel("Reward", fontsize=20)
ax1.yaxis.set_major_locator(MultipleLocator(0.1)) # 设置y轴坐标显示倍数
ax1.grid(axis="both", linestyle='dotted', zorder=0)
plt.tick_params(labelsize=20)

plt.savefig("efficient.pdf", bbox_inches='tight')
