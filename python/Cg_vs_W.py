import numpy as np
import matplotlib.pyplot as plt  # <-- corrección importante
from scipy.stats import linregress

data = []
i = 0
file_path = "proyecto-IPD413/simulations/"
file_name = "Cgate_vs_Width.raw"
file = file_path + file_name

with open(file, "r") as f:
    for line in f:
        try:
            numbers = [float(x) for x in line.strip().split()]
            if len(numbers) >= 2:
                if numbers[0] < 1e-15:
                    data.append(numbers[:6])
        except ValueError:
            continue
# Convert to numpy arrays
W = []
Cn = []
Cp = []
for dataset in data:
    arr = np.array(dataset)
    if arr.shape[0] > 0:  # evita errores por listas vacías
        W.append(arr[5])
        Cn.append(arr[1])
        Cp.append(arr[3])

# Ejemplo: graficar curvas Id vs Vgs
# j=0
derivadaP = (Cp[3] - Cp[2]) / (W[3] - W[2])
derivadaN = (Cn[3] - Cn[2]) / (W[3] - W[2])
print("Capacitancia min Nfet: ", Cn[0])
print("\nCapacitancia min Pfet: ", Cp[0], "\n")
print("Pendiente Nmos: ", derivadaN, "\n")
print("Pendiente Pmos: ", derivadaP, "\n")
fig, ax1 = plt.subplots(figsize=(8, 5))

color1 = "tab:blue"
ax1.set_xlabel("Width [m]")
ax1.set_ylabel("Capacitance [F]", color=color1)
ax1.plot(
    W,
    Cp,
    color=color1,  ##marker='o',
    label="Farads",
    linewidth=1,
)
ax1.tick_params(axis="y", labelcolor=color1)
ax1.grid(True)


# Add titles and layout
plt.title("Cgate vs Width")
fig.tight_layout()
plt.show()
