import numpy as np
import matplotlib.pyplot as plt

def henon(num, a, b):
    x, y = 0.0, 0.0
    u = np.zeros(num)
    v = np.zeros(num)

    for i in range(num):
        u[i], v[i] = x, y
        x, y = 1 - a * x**2 + y, b * x
    
    fig, ax = plt.subplots(figsize=(12, 8))  # Explicit figure creation
    ax.plot(u, v, ".", markersize=0.01, color="red")  # Much faster than scatter
    plt.show()

henon(1_000_000, 1.4, 0.3)
