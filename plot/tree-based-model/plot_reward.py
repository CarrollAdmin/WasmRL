import matplotlib.pyplot as plt

file1_data = []
with open("reward_2mm.txt", "r") as file1:
    for line in file1:
        _, reward = line.strip().split(": ")
        file1_data.append(float(reward))


x = list(range(0, 0+ len(file1_data)))

plt.plot(x, file1_data, label="WasmRL")


plt.legend(fontsize=15)
plt.xlabel("Episode", fontsize=20)
plt.ylabel("The Reward Mean", fontsize=20)
plt.tick_params(labelsize=20)

plt.savefig("tree_based.png", bbox_inches='tight')
