import matplotlib.pyplot as plt
import numpy as np
import mpld3

# multiple subplots, shared axes
fig, ax = plt.subplots(2, 2, figsize=(26, 10),sharex='col', sharey='row')
fig.subplots_adjust(hspace=0.3)


np.random.seed(0)

for axi in ax.flat:
    color = np.random.random(3)
    axi.plot(np.random.random(30), lw=2, c=color)
    axi.set_title("RGB = ({0:.2f}, {1:.2f}, {2:.2f})".format(*color),
                  size=14)
    axi.grid(color='lightgray', alpha=0.7)

mpld3.show()

