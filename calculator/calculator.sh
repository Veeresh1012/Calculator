#!/bin/bash

echo "=========================="
echo "      Bash Calculator"
echo "=========================="
echo "Supported operators: +, -, *, /"
echo "Example: 10+5-2"
echo ""

read -p "Enter an expression: " expression

# Remove spaces from the expression
expression="${expression// /}"

# Check for empty input
if [ -z "$expression" ]; then
    echo "Error: Expression cannot be empty."
    exit 1
fi

# Allow only integers, operators, and parentheses
if ! [[ "$expression" =~ ^[-0-9+*/()]+$ ]]; then
    echo "Error: Use only numbers and operators +, -, *, /."
    exit 1
fi

# Calculate the result and capture arithmetic errors
result=$(bash -c "printf '%d\n' \$(( $expression ))" 2>&1)
status=$?

if [ "$status" -ne 0 ]; then
    if [[ "$result" == *"division by 0"* ]]; then
        echo "Error: Division by zero is not allowed."
    else
        echo "Error: Invalid arithmetic expression."
    fi
    exit 1
fi

echo "Result = $result"
