
# 1) Import libraries
import glob
import numpy
import matplotlib.pyplot as plt

# 2) Import data
filenames = sorted(glob.glob('data/inflammation*.csv'))
data0 = numpy.loadtxt(fname=filenames[0], delimiter=',')
data1 = numpy.loadtxt(fname=filenames[1], delimiter=',')

# 3) Calculate difference
difference = numpy.mean(data0, axis=0) - numpy.mean(data1, axis=0)

# 4) Create and annotate figure
fig = plt.figure()

plt.xlabel('Day')
plt.ylabel('Difference in average')
plt.plot(difference)

fig.tight_layout()
plt.show()