import numpy as np
import matplotlib.pyplot as plt


datasets = ["polybench", "shootout", "slightglass", "cbench", "IoTBench"]
O3 = [1.1, 1.1, 1.1, 1.1, 1.1]
BOCA = [1.2, 1.12, 1.21, 1.16, 1.25]
Autophase = [1.3, 1.21, 1.22, 1.17, 1.3]
WasmRL_Generic = [1.23, 1.22, 1.19, 1.12, 1.23]
WasmRL_Specific = [1.32, 1.26, 1.24, 1.19, 1.35]



xticks = np.arange(len(datasets))
fig, ax = plt.subplots(figsize=(14, 9))
ax.bar(xticks, O3, width=0.11, label="O3", color="brown")
ax.bar(xticks + 0.12, BOCA, width=0.11, label="BOCA", color="steelblue")
ax.bar(xticks + 0.24, Autophase, width=0.11, label="Autophase", color="darkorange")
ax.bar(xticks + 0.36, WasmRL_Generic, width=0.11, label="WasmRL_Generic", color="purple")
ax.bar(xticks + 0.48, WasmRL_Specific, width=0.11, label="WasmRL_Specific", color="darkgreen")
# ax.set_xlabel("Domains", fontsize=24)
ax.set_ylabel("Improvement over -O0", fontsize=24)
ax.legend(loc=1, ncol = 2, bbox_to_anchor=(0.9,1), bbox_transform=ax.transAxes, prop={'size':25})
ax.set_ylim([0.9, 1.6],)
ax.set_xticks(xticks + 0.2)
ax.set_xticklabels(datasets, fontsize=24)
plt.tick_params(labelsize=19)
plt.show()
plt.savefig("overall.png")
plt.close()