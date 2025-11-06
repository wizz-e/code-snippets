# Quick Reference Guide

This guide provides quick answers to common questions about using this repository.

## Where do I put...?

### A small code example
→ `snippets/<language>/` directory

### A project template or boilerplate
→ `templates/` directory

### A complete utility script
→ `utilities/` directory

### A cheat sheet or reference guide
→ `resources/` directory

### Detailed documentation
→ `docs/` directory

## How do I organize...?

### Related snippets
Create a subdirectory within the language folder:
```
snippets/python/web_scraping/
├── beautiful_soup.py
├── requests_api.py
└── selenium_example.py
```

### Multiple templates for the same language
Use descriptive names:
```
templates/
├── python_script_template.py
├── python_api_client_template.py
└── python_test_template.py
```

### Utility categories
Create subdirectories:
```
utilities/
├── file_operations/
├── git_helpers/
└── data_tools/
```

## Quick Commands

### Find all Python snippets
```bash
find snippets/python -name "*.py"
```

### List all templates
```bash
ls -1 templates/
```

### Search for a specific topic
```bash
grep -r "keyword" snippets/
```

### Count snippets by language
```bash
find snippets/ -type f | wc -l
```

## File Naming Examples

### Good Names ✅
- `parse_json_config.py` - Clear purpose
- `user_authentication.js` - Descriptive
- `database_backup.sh` - Specific function
- `docker_commands.md` - Topic-focused

### Poor Names ❌
- `script.py` - Too generic
- `utils.js` - Not specific
- `misc.sh` - Unclear purpose
- `notes.md` - Vague

## Adding Your First Snippet

1. Choose the right directory:
   ```bash
   cd snippets/python/
   ```

2. Create your file:
   ```bash
   touch my_useful_function.py
   ```

3. Add your code with comments:
   ```python
   """
   Description of what this does.
   """
   
   def my_function():
       # Implementation
       pass
   
   # Usage example
   if __name__ == "__main__":
       my_function()
   ```

4. Test it:
   ```bash
   python my_useful_function.py
   ```

5. Commit:
   ```bash
   git add snippets/python/my_useful_function.py
   git commit -m "Add Python function for [purpose]"
   git push
   ```

## Common Patterns

### Snippet with Multiple Functions
Group related functions in one file:
```python
# string_utils.py
def reverse(s): pass
def capitalize_words(s): pass
def remove_spaces(s): pass
```

### Snippet with Configuration
Include config at the top:
```python
# Constants
MAX_RETRIES = 3
TIMEOUT = 30

def main():
    # Use constants
    pass
```

### Template with TODOs
Mark what needs customization:
```python
# TODO: Replace with your API key
API_KEY = "your-api-key-here"

# TODO: Customize this function
def process_data(data):
    pass
```

## Best Practices

1. **One concept per file** - Keep snippets focused
2. **Include examples** - Show how to use the code
3. **Add comments** - Explain non-obvious parts
4. **Test before committing** - Ensure code works
5. **Use consistent style** - Follow language conventions
6. **Keep it simple** - Optimize for readability

## Getting Help

- Check `CONTRIBUTING.md` for detailed guidelines
- Look at existing snippets for examples
- Refer to directory README files for organization tips

## Quick Links

- [Main README](../README.md)
- [Contributing Guidelines](../CONTRIBUTING.md)
- [Snippets Directory](../snippets/README.md)
- [Templates Directory](../templates/README.md)
- [Utilities Directory](../utilities/README.md)
- [Resources Directory](../resources/README.md)
