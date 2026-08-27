#!/bin/bash

echo "Enter the first number:"
read first_number

echo "Enter the second number:"
read second_number

if [ "$second_number" -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
    exit 1
fi

result=$((first_number / second_number))

echo "Division result: $first_number / $second_number = $result"
