from numba import jit
import random
import math
import numpy as np
import time

def somefunction(array):
    square = lambda x: x**2
    return np.vectorize(square)(array)

def someslowfunction(array):
    square = lambda x: x**2
    for row in range(array.shape[0]):
        for col in range(array.shape[1]):
            array[row][col] = square(array[row][col])
    return array

@jit(nopython=True)
def somecompiledfunction(array):
    square = lambda x: x**2
    for row in range(array.shape[0]):
        for col in range(array.shape[1]):
            array[row][col] = square(array[row][col])
    return array

if __name__ == "__main__":
    array = np.random.randint(1,10,(100,100))  

    start = time.time()
    res = somefunction(array)
    end = time.time()
    print(f"somefunction() took {round(end - start,4)}")

    start = time.time()
    res = someslowfunction(array)
    end = time.time()
    print(f"someslowfunction() took {round(end - start,4)}")

    start = time.time()
    res = somecompiledfunction(array)
    end = time.time()
    print(f"somecompiledfunction() took {round(end - start, 4)} to compile and execute")

    start = time.time()
    res = somecompiledfunction(array)
    end = time.time()
    print(f"somecompiledfunction() took {round(end - start,4)} to execute")


