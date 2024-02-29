import numpy as np

# Example matrix
matrix = np.array([[1, 0, 0],
                   [0.002, 0.998, 0],
                   [0, 0.002, 0.998]])


def findSteadyState(transitionMatrix, threshold=1e-5, maxIterations=10000):

    result = transitionMatrix

    for _ in range(maxIterations):
        previousResult = result
        result = np.dot(result, transitionMatrix)
        print(_)
        if np.linalg.norm(result - previousResult, ord=1) < threshold:
            break

    roundedMatrix = np.around(result, decimals=2)

    print("Steady State Matrix:")
    print(result)
    print("Rounded Steady State Matrix:")
    print(roundedMatrix)

findSteadyState(matrix)
