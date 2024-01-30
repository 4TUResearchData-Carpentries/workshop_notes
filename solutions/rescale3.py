def rescale(input_array, low_val=0.0, high_val=1.0):
    """Takes an array as input, and returns a corresponding array scaled so
    that low_val corresponds to the minimum and high_val to the maximum value of the input array.
    """
    L = numpy.min(input_array)
    H = numpy.max(input_array)
    intermed_array = (input_array - L) / (H - L)
    output_array = intermed_array * (high_val - low_val) + low_val
    return output_array

print(rescale(numpy.arange(13), low_val=-2, high_val=7))