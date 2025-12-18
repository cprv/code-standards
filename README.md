# CPRV Code Standards

A public repository containing CPRV's official code style configurations and formatting standards across languages and IDEs, to promote consistency, readability, and best practices.

## Overview

This repository provides standardized configuration files for code formatting and linting across multiple programming languages and development environments. By using these configurations, teams can ensure consistent code style across projects.

## Supported Languages

- **JavaScript/TypeScript**: ESLint + Prettier
- **Python**: Black + Flake8 + isort
- **Java**: Google Java Format (via clang-format)
- **Go**: gofmt + goimports
- **C/C++**: clang-format (Google style)

## Supported IDEs/Editors

- **VS Code**: Recommended extensions and settings included
- **Any Editor**: EditorConfig support for basic formatting rules

## Quick Start

### 1. Clone or Download Configurations

You can either clone this repository or download specific configuration files for your project:

```bash
# Clone the repository
git clone https://github.com/cprv/code-standards.git

# Or download specific files using curl/wget
curl -O https://raw.githubusercontent.com/cprv/code-standards/main/.editorconfig
```

### 2. Validate Your Setup (Optional)

This repository includes a validation script to test all configurations:

```bash
./validate.sh
```

### 3. Copy Configuration Files to Your Project

Copy the relevant configuration files to your project root:

```bash
# For JavaScript/TypeScript projects
cp .editorconfig .prettierrc.json .prettierignore .eslintrc.json /path/to/your/project/

# For Python projects
cp .editorconfig pyproject.toml .flake8 /path/to/your/project/

# For Java projects
cp .editorconfig .clang-format-java /path/to/your/project/

# For Go projects
cp .editorconfig golang-style.md /path/to/your/project/

# For C/C++ projects
cp .editorconfig .clang-format /path/to/your/project/
```

### 3. Install Required Tools

#### JavaScript/TypeScript

```bash
npm install --save-dev eslint prettier eslint-config-prettier eslint-plugin-prettier @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

#### Python

```bash
pip install black flake8 isort mypy
```

#### Java

Install Google Java Format or use clang-format with the Java configuration.

#### Go

```bash
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
```

#### C/C++

Install clang-format (usually available via package managers):

```bash
# Ubuntu/Debian
sudo apt-get install clang-format

# macOS
brew install clang-format
```

## Usage

### EditorConfig

EditorConfig is supported by most modern IDEs and editors. No additional setup is required beyond copying the `.editorconfig` file to your project root.

### JavaScript/TypeScript

Format code with Prettier:
```bash
npx prettier --write .
```

Lint code with ESLint:
```bash
npx eslint . --fix
```

### Python

Format code with Black:
```bash
black .
```

Sort imports with isort:
```bash
isort .
```

Lint with Flake8:
```bash
flake8 .
```

### Java

Format code with clang-format:
```bash
clang-format -i --style=file:.clang-format-java *.java
```

### Go

Format code:
```bash
gofmt -w .
goimports -w .
```

Lint code:
```bash
golangci-lint run
```

### C/C++

Format code with clang-format:
```bash
clang-format -i --style=file *.cpp *.h
```

## VS Code Setup

1. Install the recommended extensions listed in `.vscode/extensions.json`
2. Copy `.vscode/settings.json` to your project's `.vscode/` directory
3. VS Code will automatically format and lint your code on save

## CI/CD Integration

You can integrate these configurations into your CI/CD pipeline to ensure code quality:

### GitHub Actions Example

```yaml
name: Code Quality

on: [push, pull_request]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '18'
      - name: Install dependencies
        run: npm install
      - name: Run Prettier
        run: npx prettier --check .
      - name: Run ESLint
        run: npx eslint .
```

## Configuration Details

### Line Length

- **JavaScript/TypeScript**: 100 characters
- **Python**: 100 characters
- **Java**: 120 characters
- **Go**: No hard limit (use gofmt default)
- **C/C++**: 100 characters

### Indentation

- **JavaScript/TypeScript**: 2 spaces
- **Python**: 4 spaces
- **Java**: 4 spaces
- **Go**: Tabs (gofmt standard)
- **C/C++**: 4 spaces

### Line Endings

All files use LF (Unix-style) line endings.

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute to these standards.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Resources

- [EditorConfig](https://editorconfig.org/)
- [Prettier](https://prettier.io/)
- [ESLint](https://eslint.org/)
- [Black](https://black.readthedocs.io/)
- [Flake8](https://flake8.pycqa.org/)
- [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html)
- [Effective Go](https://golang.org/doc/effective_go.html)
- [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html)
