
import numpy as np
import matplotlib.pyplot as plt

# Calculate statistics
data_mean = numpy.mean(data, axis=0)
std_mean = numpy.std(data, axis=0)
days = numpy.arange(len(data_mean))

# Plot error bars
plt.errorbar(x=days, y=data_mean, yerr=std_mean, marker='o', linestyle='', capsize=3)
plt.ylabel("Mean inflammation")
plt.xlabel("Days")
plt.show()