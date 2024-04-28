import numpy as np

def find_steady_state(transition_matrix, threshold=1e-10, max_iterations=1000):
    """
    Find the steady state vector from a transition probability matrix using iteration.
    
    Parameters:
        transition_matrix (numpy.ndarray): Transition probability matrix.
        threshold (float): Convergence threshold.
        max_iterations (int): Maximum number of iterations.
        
    Returns:
        numpy.ndarray: Steady state vector.
    """
    # Normalize transition matrix rows
    transition_matrix /= transition_matrix.sum(axis=1, keepdims=True)
    
    # Initialize state vector
    state_vector = np.ones(transition_matrix.shape[0]) / transition_matrix.shape[0]
    
    # Iterate until convergence or max iterations
    for _ in range(max_iterations):
        new_state = np.dot(state_vector, transition_matrix)
        if np.linalg.norm(new_state - state_vector, ord=1) < threshold:
            return new_state
        state_vector = new_state
    
    raise ValueError("Failed to converge within maximum iterations")

# Example transition probability matrix
transition_matrix = np.array([[0.7, 0.2, 0.1],
                              [0.3, 0.6, 0.1],
                              [0.4, 0.1, 0.5]])

# Find the steady state
steady_state = find_steady_state(transition_matrix)
print("Steady State Vector:", steady_state)
