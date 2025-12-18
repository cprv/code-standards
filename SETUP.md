# Quick Setup Guide

This guide helps you quickly set up code standards for your project.

## Choose Your Language

### JavaScript/TypeScript

**1. Copy configuration files:**
```bash
cp .editorconfig .prettierrc.json .prettierignore .eslintrc.json /path/to/your/project/
```

**2. Install dependencies:**
```bash
cd /path/to/your/project
npm install --save-dev eslint prettier eslint-config-prettier eslint-plugin-prettier @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

**3. Add scripts to package.json:**
```json
{
  "scripts": {
    "format": "prettier --write .",
    "lint": "eslint . --fix"
  }
}
```

**4. Run formatting and linting:**
```bash
npm run format
npm run lint
```

---

### Python

**1. Copy configuration files:**
```bash
cp .editorconfig pyproject.toml .flake8 /path/to/your/project/
```

**2. Install tools:**
```bash
pip install black flake8 isort mypy
```

**3. Format and lint your code:**
```bash
black .
isort .
flake8 .
```

---

### Java

**1. Copy configuration files:**
```bash
cp .editorconfig .clang-format-java /path/to/your/project/
```

**2. Install clang-format:**
```bash
# Ubuntu/Debian
sudo apt-get install clang-format

# macOS
brew install clang-format
```

**3. Format your code:**
```bash
find . -name "*.java" -exec clang-format -i --style=file:.clang-format-java {} \;
```

---

### Go

**1. Copy configuration files:**
```bash
cp .editorconfig golang-style.md /path/to/your/project/
```

**2. Install tools:**
```bash
go install golang.org/x/tools/cmd/goimports@latest
```

**3. Format your code:**
```bash
gofmt -w .
goimports -w .
```

---

### C/C++

**1. Copy configuration files:**
```bash
cp .editorconfig .clang-format /path/to/your/project/
```

**2. Install clang-format:**
```bash
# Ubuntu/Debian
sudo apt-get install clang-format

# macOS
brew install clang-format
```

**3. Format your code:**
```bash
find . -name "*.cpp" -o -name "*.h" -o -name "*.c" -o -name "*.hpp" | xargs clang-format -i
```

---

## VS Code Setup

**1. Copy VS Code settings:**
```bash
mkdir -p /path/to/your/project/.vscode
cp .vscode/* /path/to/your/project/.vscode/
```

**2. Install recommended extensions:**

Open VS Code in your project and click "Install" when prompted to install recommended extensions, or install them manually:
- EditorConfig for VS Code
- Prettier - Code formatter
- ESLint
- Python (for Python projects)
- Black Formatter (for Python projects)
- Flake8 (for Python projects)
- Go (for Go projects)
- C/C++ (for C/C++ projects)
- Language Support for Java (for Java projects)

**3. Reload VS Code**

Your code will now be formatted automatically on save!

---

## CI/CD Integration

### GitHub Actions Example

Create `.github/workflows/lint.yml`:

```yaml
name: Lint Code

on: [push, pull_request]

jobs:
  lint-js:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
      - run: npm install
      - run: npm run lint

  lint-python:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-python@v4
      - run: pip install black flake8 isort
      - run: black --check .
      - run: flake8 .
      - run: isort --check .
```

---

## Troubleshooting

### "Command not found" errors

Make sure you've installed the required tools for your language (see sections above).

### Formatting conflicts

If you have existing formatting configurations, they may conflict with these standards. Remove old config files like `.prettierrc`, `setup.cfg`, etc.

### Editor not formatting on save

1. Check that you've installed the recommended extensions
2. Verify `.vscode/settings.json` is in your project
3. Reload VS Code

---

## Need Help?

- Check the main [README.md](README.md) for detailed documentation
- See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines
- View [examples/](examples/) for code samples
