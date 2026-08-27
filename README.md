# Bash Calculator

A command-line calculator built with Bash. The project demonstrates Bash scripting, Linux commands, Git branching, pull requests, and merging.

## Features

- Addition, subtraction, multiplication, and division
- Multiple operations in one expression
- Parentheses support
- Input validation
- Division-by-zero handling

## Usage

Give executable permission:

```bash
chmod +x calculator/calculator.sh
```

Run the calculator:

```bash
./calculator/calculator.sh
```

Example:

```text
Enter an expression: 10+5-2
Result = 13
```

> The calculator uses integer arithmetic. For example, `7/2` returns `3`.

## Git Workflow

Each arithmetic feature was developed on a separate branch, tested, pushed to GitHub, and merged into `main` through a pull request.
