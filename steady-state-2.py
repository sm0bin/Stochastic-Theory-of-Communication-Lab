import numpy as np

# Example matrix
matrix = np.array([[1, 0, 0],
                   [0.002, 0.998, 0],
                   [0, 0.002, 0.998]])


def findSteadyState(transitionMatrix, threshold=.001, maxIterations=1000):

    result = transitionMatrix

    for _ in range(10000):
        result = np.dot(result, transitionMatrix)
        print(_)
        if np.linalg.norm(result - transitionMatrix, ord=1) < threshold:
            break
        

    roundedMatrix = np.around(result, decimals=2)

    print(result)
    print(roundedMatrix)


findSteadyState(matrix)