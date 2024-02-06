import numpy
import matplotlib.pyplot as plt

def detect_problems(filename):
    data = numpy.loadtxt(fname=filename, delimiter=',')
    
    max_inflammation = numpy.max(data, axis=0)
    min_inflammation = numpy.min(data, axis=0)
    
    if (max_inflammation[0] == 0) and (max_inflammation[20] == 20):
        print('Suspicious looking maxima!')
    elif numpy.sum(min_inflammation) == 0:
        print('Minima add up to zero!')
    else:
        print('Data looks OK')
        
        
def visualize(filename):
    #Import data
    data = numpy.loadtxt(fname=filename, delimiter =',')

    #Set up figure
    fig = plt.figure(figsize=(10.0,3.0))

    # add subplots
    axes1 = fig.add_subplot(1, 3, 1) #nrows, ncols, pos
    axes2 = fig.add_subplot(1, 3, 2)
    axes3 = fig.add_subplot(1, 3, 3)

    axes1.plot(numpy.mean(data, axis=0))
    axes2.plot(numpy.max(data,axis=0))
    axes3.plot(numpy.min(data,axis=0))

    axes1.set_ylabel('mean')
    axes2.set_ylabel('max')
    axes3.set_ylabel('min')
    
    plt.show()