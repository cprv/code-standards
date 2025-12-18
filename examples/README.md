# Code Examples

This directory contains example code files demonstrating CPRV's code standards for different programming languages.

## Purpose

These examples serve two purposes:

1. **Reference**: Show developers what properly formatted code looks like for each language
2. **Testing**: Verify that the configuration files in this repository work correctly

## Examples Included

- **JavaScript** (`javascript/example.js`): Demonstrates ESLint and Prettier formatting
- **Python** (`python/example.py`): Demonstrates Black, Flake8, and isort formatting
- **Go** (`go/example.go`): Demonstrates gofmt and goimports formatting
- **C++** (`cpp/example.cpp`): Demonstrates clang-format formatting
- **Java** (`java/Calculator.java`): Demonstrates Google Java Format via clang-format

## Using These Examples

### Verify Formatting

You can use these examples to test that the configurations work correctly:

#### JavaScript
```bash
cd examples/javascript
npx prettier --check example.js
npx eslint example.js
```

#### Python
```bash
cd examples/python
black --check example.py
flake8 example.py
isort --check example.py
```

#### Go
```bash
cd examples/go
gofmt -d example.go
goimports -d example.go
```

#### C++
```bash
cd examples/cpp
clang-format --dry-run --Werror example.cpp
```

#### Java
```bash
cd examples/java
clang-format --dry-run --Werror --style=file:../../.clang-format-java Calculator.java
```

### Running the Examples

Each example contains a simple calculator implementation that you can run:

#### JavaScript
```bash
node examples/javascript/example.js
```

#### Python
```bash
python examples/python/example.py
```

#### Go
```bash
go run examples/go/example.go
```

#### C++
```bash
cd examples/cpp
g++ -o example example.cpp
./example
```

#### Java
```bash
cd examples/java
javac Calculator.java
java Calculator
```

## Contributing

When contributing new examples or updating existing ones, ensure they:

1. Follow the code standards defined in this repository
2. Include meaningful comments and documentation
3. Demonstrate key features of the language
4. Can be successfully formatted using the provided configurations
