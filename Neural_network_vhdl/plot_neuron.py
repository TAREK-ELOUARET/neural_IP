import matplotlib
import matplotlib.pyplot as plt
import numpy as np


labels = [1, 10, 50, 100, 160, 200, 230, 240, 400, 1000, 2000, 3000]
LUT = [241, 254, 248, 3403, 3052, 4330, 4674, 3036, 14687, 27058, 72738, 124093]
FF = [276, 331, 326, 2796, 3095, 3935, 4241, 2194, 3469, 6014, 22711, 43168]

x = np.arange(len(labels))  # the label locations
width = 0.35  # the width of the bars

fig, ax = plt.subplots()
rects1 = ax.bar(x - width/2, LUT, width, label='LUT')
rects2 = ax.bar(x + width/2, FF, width, label='FLIP FLOP')

# Add some text for labels, title and custom x-axis tick labels, etc.
ax.set_ylabel('Number of resources')
ax.set_xlabel('Number of neurons')

ax.set_title('Number of resources per number of neuron(s) using HLS')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.legend()


def autolabel(rects):
    """Attach a text label above each bar in *rects*, displaying its height."""
    for rect in rects:
        height = rect.get_height()
        ax.annotate('{}'.format(height),
                    xy=(rect.get_x() + rect.get_width() / 2, height),
                    xytext=(0, 3),  # 3 points vertical offset
                    textcoords="offset points",
                    ha='center', va='bottom')


autolabel(rects1)
autolabel(rects2)

fig.tight_layout()

plt.show()
