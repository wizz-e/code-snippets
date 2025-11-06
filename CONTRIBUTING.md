# Contributing to Code Snippets

Thank you for your interest in contributing! This guide will help you add new snippets, templates, and utilities to the repository.

## Getting Started

1. Make sure you understand the repository structure (see main README.md)
2. Choose the appropriate directory for your contribution
3. Follow the naming conventions and style guidelines below

## Adding Code Snippets

### Location
Place snippets in the appropriate language directory under `snippets/`:
- `snippets/python/` for Python
- `snippets/javascript/` for JavaScript
- `snippets/java/` for Java
- etc.

### Guidelines
1. **One concept per file** - Keep snippets focused
2. **Include comments** - Explain what the code does
3. **Add usage examples** - Show how to use the snippet
4. **Test your code** - Ensure it works as expected
5. **Use descriptive names** - e.g., `parse_csv_file.py` not `parser.py`

### Format
```python
"""
Brief description of what this snippet does.

More detailed explanation if needed.
"""

def your_function():
    """Docstring explaining the function."""
    # Your code here
    pass

# Example usage
if __name__ == "__main__":
    # Demonstrate how to use the snippet
    result = your_function()
    print(result)
```

## Adding Templates

### Location
Place templates in the `templates/` directory.

### Guidelines
1. **Make it generic** - Use placeholders for project-specific values
2. **Comment placeholders** - Mark what needs to be customized
3. **Include instructions** - Add comments explaining how to use the template
4. **Keep it minimal** - Only include essential structure

### Example
```python
# [PROJECT_NAME] - Replace with your project name
# [AUTHOR] - Replace with your name
# [DATE] - Replace with current date

def main():
    # TODO: Add your implementation here
    pass
```

## Adding Utilities

### Location
Place utilities in the `utilities/` directory.

### Guidelines
1. **Make it standalone** - Should run independently
2. **Include help text** - Add usage instructions
3. **Handle errors** - Implement proper error handling
4. **Make it executable** - For scripts, set execute permissions
5. **Add documentation** - Explain what it does and how to use it

### Example
```bash
#!/bin/bash
# Script Name: example_utility.sh
# Description: What this utility does
# Usage: ./example_utility.sh [arguments]

# Your code here
```

## Adding Resources

### Location
Place resources in the `resources/` directory.

### Guidelines
1. **Use markdown** - For documentation and guides
2. **Organize by topic** - Create subdirectories if needed
3. **Keep it relevant** - Only add useful, high-quality resources
4. **Update links** - Ensure external links are valid

## Style Guidelines

### Python
- Follow PEP 8 style guide
- Use type hints where appropriate
- Include docstrings for functions and classes

### JavaScript
- Use modern ES6+ syntax
- Include JSDoc comments
- Use meaningful variable names

### Shell Scripts
- Include shebang line
- Add comments for complex operations
- Use meaningful function names

### General
- Use consistent indentation (spaces, not tabs)
- Keep lines under 100 characters when possible
- Add blank lines for readability
- Remove trailing whitespace

## Naming Conventions

### Files
- Use lowercase with underscores: `my_snippet.py`
- Be descriptive: `parse_json_config.js` not `parse.js`
- Include appropriate extension: `.py`, `.js`, `.sh`, etc.

### Functions/Variables
- Follow language conventions
- Use descriptive names: `calculate_total()` not `calc()`
- Avoid abbreviations unless widely known

## Commit Messages

Use clear, descriptive commit messages:
- Start with a verb: "Add", "Update", "Fix", "Remove"
- Be specific: "Add Python CSV parsing snippet"
- Keep it concise but informative

Examples:
- ✅ "Add JavaScript array manipulation utilities"
- ✅ "Update Python template with error handling"
- ✅ "Fix typo in Git cheatsheet"
- ❌ "Update files"
- ❌ "Fixed stuff"

## Questions or Suggestions?

If you have questions about contributing or suggestions for improving the repository structure, feel free to open an issue or discussion.

Thank you for contributing! 🎉
