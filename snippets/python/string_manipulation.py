"""
String Manipulation Utilities

Common string operations and transformations.
"""


def reverse_string(s):
    """Reverse a string.
    
    Args:
        s (str): Input string
        
    Returns:
        str: Reversed string
    """
    return s[::-1]


def to_title_case(s):
    """Convert string to title case.
    
    Args:
        s (str): Input string
        
    Returns:
        str: Title-cased string
    """
    return ' '.join(word.capitalize() for word in s.split())


def remove_whitespace(s):
    """Remove all whitespace from a string.
    
    Args:
        s (str): Input string
        
    Returns:
        str: String without whitespace
    """
    return ''.join(s.split())


def count_words(s):
    """Count the number of words in a string.
    
    Args:
        s (str): Input string
        
    Returns:
        int: Number of words
    """
    return len(s.split())


# Example usage
if __name__ == "__main__":
    text = "Hello World"
    print(f"Original: {text}")
    print(f"Reversed: {reverse_string(text)}")
    print(f"Title case: {to_title_case(text.lower())}")
    print(f"No whitespace: {remove_whitespace(text)}")
    print(f"Word count: {count_words(text)}")
