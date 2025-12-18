# Go Code Style Guide

Go code should follow the official Go formatting standards using `gofmt` and `goimports`.

## Tools

- **gofmt**: Automatically formats Go code according to Go standards
- **goimports**: Automatically formats Go code and manages imports
- **golangci-lint**: Runs multiple linters for Go code

## Configuration

Go doesn't require configuration files as the standard is built into the tools.

## Usage

Format your code:
```bash
gofmt -w .
goimports -w .
```

Lint your code:
```bash
golangci-lint run
```

## Best Practices

1. Use `gofmt` to format all Go code
2. Use `goimports` to manage imports automatically
3. Follow the [Effective Go](https://golang.org/doc/effective_go.html) guidelines
4. Use meaningful variable and function names
5. Keep functions small and focused
6. Use Go modules for dependency management
