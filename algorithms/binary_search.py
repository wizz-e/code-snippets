"""
Description: Binary search algorithm implementation
Author: Code Snippets Repository
Date: 2025-11-06

Usage:
    index = binary_search(sorted_list, target_value)
    
Example:
    >>> arr = [1, 3, 5, 7, 9, 11, 13, 15]
    >>> binary_search(arr, 7)
    3
    >>> binary_search(arr, 10)
    -1
    
Time Complexity: O(log n)
Space Complexity: O(1) for iterative, O(log n) for recursive

Dependencies:
    None - uses built-in Python features
"""

def binary_search(arr, target):
    """
    Iterative binary search implementation.
    
    Args:
        arr (list): Sorted list of elements
        target: Element to search for
        
    Returns:
        int: Index of target if found, -1 otherwise
    """
    left, right = 0, len(arr) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    
    return -1


def binary_search_recursive(arr, target, left=0, right=None):
    """
    Recursive binary search implementation.
    
    Args:
        arr (list): Sorted list of elements
        target: Element to search for
        left (int): Left boundary index
        right (int): Right boundary index
        
    Returns:
        int: Index of target if found, -1 otherwise
    """
    if right is None:
        right = len(arr) - 1
    
    if left > right:
        return -1
    
    mid = (left + right) // 2
    
    if arr[mid] == target:
        return mid
    elif arr[mid] < target:
        return binary_search_recursive(arr, target, mid + 1, right)
    else:
        return binary_search_recursive(arr, target, left, mid - 1)


# Example usage and tests
if __name__ == "__main__":
    # Test data
    test_array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
    
    print("Array:", test_array)
    print()
    
    # Test iterative version
    print("Iterative Binary Search:")
    for target in [7, 15, 1, 19, 10, 20]:
        result = binary_search(test_array, target)
        if result != -1:
            print(f"  Target {target} found at index {result}")
        else:
            print(f"  Target {target} not found")
    
    print()
    
    # Test recursive version
    print("Recursive Binary Search:")
    for target in [7, 15, 1, 19, 10, 20]:
        result = binary_search_recursive(test_array, target)
        if result != -1:
            print(f"  Target {target} found at index {result}")
        else:
            print(f"  Target {target} not found")
