import numpy

def rescale(input_array):
    L = numpy.min(input_array)
    H = numpy.max(input_array)
    output_array = (input_array - L) / (H - L)
    return output_array