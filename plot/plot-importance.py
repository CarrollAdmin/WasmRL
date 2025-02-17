import numpy as np
import matplotlib.pyplot as plt

# Provided data
data = np.array([
    [0.000, 0.040, 0.020, 0.000, 0.008, 0.006, 0.052, 0.000, 0.001, 0.013, 0.000, 0.008, 0.009],
    [0.006, 0.015, 0.000, 0.000, 0.007, 0.003, 0.004, 0.000, 0.003, 0.000, 0.001, 0.000, 0.003],
    [0.000, 0.010, 0.002, 0.000, 0.031, 0.003, 0.002, 0.000, 0.007, 0.003, 0.004, 0.000, 0.003],
    [0.000, 0.010, 0.000, 0.000, 0.000, 0.003, 0.000, 0.009, 0.004, 0.060, 0.000, 0.000, 0.008],
    [0.014, 0.000, 0.000, 0.014, 0.000, 0.000, 0.001, 0.000, 0.006, 0.000, 0.003, 0.000, 0.011],
    [0.001, 0.010, 0.001, 0.010, 0.004, 0.001, 0.003, 0.000, 0.006, 0.004, 0.001, 0.000, 0.004],
    [0.009, 0.002, 0.007, 0.002, 0.002, 0.000, 0.005, 0.003, 0.024, 0.010, 0.008, 0.000, 0.005],
    [0.005, 0.023, 0.000, 0.000, 0.010, 0.003, 0.011, 0.001, 0.010, 0.004, 0.008, 0.003, 0.001],
    [0.024, 0.015, 0.000, 0.000, 0.000, 0.001, 0.018, 0.001, 0.001, 0.019, 0.009, 0.001, 0.005],
    [0.013, 0.001, 0.000, 0.022, 0.000, 0.000, 0.008, 0.000, 0.001, 0.018, 0.009, 0.001, 0.005]
])

# Create a heatmap with adjusted aspect ratio
fig, ax = plt.subplots(figsize=(10, 13))  # Adjust the figsize as needed
im = ax.imshow(data, cmap='hot', interpolation='nearest', aspect='auto')

# Add annotations
for i in range(data.shape[0]):
    for j in range(data.shape[1]):
        ax.text(j, i, f'{data[i, j]:.3f}', ha='center', va='center', color='black', fontsize=8)

# Customize colorbar to match heatmap cell size
cbar = ax.figure.colorbar(im, ax=ax, pad=0.02, aspect=30)
cbar.set_label('Values')
cbar.set_ticks(np.linspace(data.min(), data.max(), 6))
cbar.ax.tick_params(labelsize=8)
plt.savefig("importance.png", bbox_inches='tight')
