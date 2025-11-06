# Contributing to Code Snippets

Thank you for your interest in contributing to this code snippets repository! This guide will help you add your snippets effectively.

## 📋 Guidelines

### 1. Choose the Right Category

Place your snippet in the most appropriate folder:
- **python/**: Python scripts and functions
- **javascript/**: JavaScript/Node.js code
- **java/**: Java code
- **cpp/**: C/C++ code
- **bash/**: Shell scripts
- **sql/**: Database queries and SQL
- **web/**: HTML/CSS/Frontend code
- **algorithms/**: Algorithm implementations
- **data-structures/**: Data structure code
- **utilities/**: General cross-language utilities

If your snippet doesn't fit any category, consider creating a new folder or placing it in `utilities/`.

### 2. File Naming

Use clear, descriptive names:
- ✅ Good: `reverse_string.py`, `binary_search.cpp`, `fetch_api_data.js`
- ❌ Bad: `script1.py`, `test.cpp`, `code.js`

### 3. Code Format

Each snippet should follow this structure:

```python
"""
Description: Brief description of what this snippet does
Author: Your Name (optional)
Date: YYYY-MM-DD (optional)

Usage:
    Explain how to use this snippet
    
Example:
    result = function_name(param1, param2)
    print(result)
    
Dependencies:
    - library1
    - library2
"""

# Your code here
def function_name():
    pass
```

### 4. Documentation Requirements

- Add a comment block at the top explaining the snippet
- Include usage examples
- List any dependencies or requirements
- Add inline comments for complex logic

### 5. Code Quality

- Test your code before submitting
- Follow language-specific style guides (PEP 8 for Python, etc.)
- Keep snippets focused on a single task
- Make code readable and maintainable

### 6. README in Folders

If you're adding multiple related snippets to a folder, consider adding a README.md in that folder listing the snippets with brief descriptions.

## 🔄 Submission Process

1. Fork the repository
2. Create a new branch for your snippet
3. Add your snippet file(s)
4. Commit with a clear message: "Add [snippet name] for [language/category]"
5. Push to your fork
6. Submit a pull request

## ✅ Checklist

Before submitting, ensure:
- [ ] Snippet is in the correct folder
- [ ] Filename is descriptive
- [ ] Code includes documentation
- [ ] Code has been tested
- [ ] No sensitive information (passwords, API keys, etc.)
- [ ] Code follows best practices for the language

## 🚫 What Not to Include

- Incomplete or broken code
- Code with security vulnerabilities
- Proprietary or copyrighted code
- Personal credentials or sensitive data
- Extremely large files (>1MB)

## 💬 Questions?

If you're unsure about anything, feel free to:
- Open an issue for discussion
- Ask in your pull request
- Review existing snippets for examples

Thank you for contributing! 🎉
