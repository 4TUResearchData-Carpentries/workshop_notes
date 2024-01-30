
import numpy
import matplotlib.pyplot as plt

# Question 1
change_per_day = numpy.diff(data, axis=1)
print("1) Change per day =\n", change_per_day, "\n")

# Question 2 
data_shape = numpy.diff(data, axis=1).shape
print("2) Shape =", data_shape, "\n")

# Question 3 
max_change_per_patient = numpy.max(numpy.diff(data, axis=1), axis=1)
# Alternatively, `numpy.diff(data, axis=1).max(axis=1)` also works.
print("3) Max change per patient = \n", max_change_per_patient, "\n")

# Question 4
print("4) Histogram of change per day for patient 3 \n")
plt.hist(numpy.diff(data[3,:]))
plt.xlabel("Change per day")
plt.ylabel("Frequency")
plt.show()