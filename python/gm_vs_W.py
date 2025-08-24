import numpy as np
import matplotlib.pyplot as plt  # <-- corrección importante
from scipy.stats import linregress

data = []
i = 0
file_path = "proyecto-IPD413/simulations/"
file_name = "gm_vs_w.raw"
file = file_path + file_name

with open(file, "r") as f:
    for line in f:
        try:
            numbers = [float(x) for x in line.strip().split()]
            if len(numbers) >= 2:
                data.append(numbers[:4])
        except ValueError:
            continue
# Convert to numpy arrays
W = []
gm = []
for dataset in data:
    arr = np.array(dataset)
    if arr.shape[0] > 0:  # evita errores por listas vacías
        W.append(arr[3])
        gm.append(arr[1])

# Ejemplo: graficar curvas Id vs Vgs
# j=0

fig, ax1 = plt.subplots(figsize=(8, 5))

color1 = "tab:blue"
ax1.set_xlabel("Width [m]")
ax1.set_ylabel("gm [S]", color=color1)
ax1.plot(
    W,
    gm,
    color=color1,  ##marker='o',
    label="gm",
    linewidth=1,
)
ax1.tick_params(axis="y", labelcolor=color1)
ax1.grid(True)


# Add titles and layout
plt.title("gm vs Width with VDS=0.9[v]")
fig.tight_layout()
plt.show()
