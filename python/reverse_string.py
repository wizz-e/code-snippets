"""
Description: Simple function to reverse a string
Author: Code Snippets Repository
Date: 2025-11-06

Usage:
    reversed_text = reverse_string("Hello World")
    
Example:
    >>> reverse_string("Hello")
    'olleH'
    >>> reverse_string("Python")
    'nohtyP'
    
Dependencies:
    None - uses built-in Python features
"""

def reverse_string(text):
    """
    Reverse a string using Python slicing.
    
    Args:
        text (str): The string to reverse
        
    Returns:
        str: The reversed string
    """
    return text[::-1]


def reverse_string_loop(text):
    """
    Reverse a string using a loop (alternative method).
    
    Args:
        text (str): The string to reverse
        
    Returns:
        str: The reversed string
    """
    result = ""
    for char in text:
        result = char + result
    return result


# Example usage
if __name__ == "__main__":
    # Test the functions
    test_string = "Hello World"
    
    print(f"Original: {test_string}")
    print(f"Reversed (slicing): {reverse_string(test_string)}")
    print(f"Reversed (loop): {reverse_string_loop(test_string)}")
