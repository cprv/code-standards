#!/bin/bash

# Validation script for CPRV code standards
# This script validates that all configuration files work correctly

set -e

echo "🔍 Validating CPRV Code Standards..."
echo ""

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Track results
ERRORS=0

# Function to run a check
run_check() {
    local name=$1
    local command=$2
    
    echo -n "Checking $name... "
    if eval "$command" > /dev/null 2>&1; then
        echo -e "${GREEN}✓${NC}"
    else
        echo -e "${RED}✗${NC}"
        ERRORS=$((ERRORS + 1))
    fi
}

# JavaScript/TypeScript checks
if command -v npx &> /dev/null; then
    if [ -d "node_modules" ]; then
        echo "📝 JavaScript/TypeScript:"
        run_check "Prettier" "npx prettier --check examples/javascript/example.js"
        run_check "ESLint" "npx eslint examples/javascript/example.js"
        echo ""
    else
        echo "⚠️  JavaScript/TypeScript: node_modules not found. Run 'npm install' first."
        echo ""
    fi
fi

# Python checks
if command -v python3 &> /dev/null; then
    echo "🐍 Python:"
    
    if command -v black &> /dev/null; then
        run_check "Black" "black --check examples/python/example.py"
    else
        echo "⚠️  Black not installed. Run 'pip install black'"
    fi
    
    if command -v flake8 &> /dev/null; then
        run_check "Flake8" "flake8 examples/python/example.py"
    else
        echo "⚠️  Flake8 not installed. Run 'pip install flake8'"
    fi
    
    if command -v isort &> /dev/null; then
        run_check "isort" "isort --check examples/python/example.py"
    else
        echo "⚠️  isort not installed. Run 'pip install isort'"
    fi
    echo ""
fi

# Go checks
if command -v go &> /dev/null; then
    echo "🔵 Go:"
    run_check "gofmt" "test -z \"\$(gofmt -l examples/go/example.go)\""
    echo ""
fi

# C++ and Java checks (both use clang-format)
if command -v clang-format &> /dev/null; then
    echo "⚙️  C++:"
    run_check "clang-format" "clang-format --dry-run --Werror examples/cpp/example.cpp"
    echo ""
    
    echo "☕ Java:"
    run_check "clang-format (Java)" "clang-format --dry-run --Werror --style=file:.clang-format-java examples/java/Calculator.java"
    echo ""
fi

# Summary
echo "================================"
if [ $ERRORS -eq 0 ]; then
    echo -e "${GREEN}✓ All checks passed!${NC}"
    exit 0
else
    echo -e "${RED}✗ $ERRORS check(s) failed${NC}"
    exit 1
fi
