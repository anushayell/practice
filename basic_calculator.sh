#!/bin/bash

# Function to validate if the input is a valid number
validate_input() {
  if [[ ! "$1" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
  fi
}

# Welcome message
echo -e "Welcome to the Calculator script\n"

# Read and validate the first number
read -p "Enter first number: " num1
validate_input "$num1"

# Read and validate the second number
read -p "Enter second number: " num2
validate_input "$num2"

# Menu for operations
echo -e "\nChoose an arithmetic operation."

# Ask for user input for the operation
read -p "Choose an operation (1 for add, 2 for sub, 3 for mul, 4 for div): " operation

# Perform the operation using a case statement
case $operation in
  1)  # Addition
    echo "Sum of given numbers: $((num1 + num2))"
    ;;
  2)  # Subtraction
    echo "Difference of given numbers: $((num1 - num2))"
    ;;
  3)  # Multiplication
    echo "Product of given numbers: $((num1 * num2))"
    ;;
  4)  # Division
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero is not allowed."
    else
      echo "Quotient of given numbers: $((num1 / num2))"
    fi
    ;;
  *)
    echo "Invalid operation choice. Please enter a number between 1 and 4."
    exit 1
    ;;
esac

# Thank you message
echo "Thank you for using the calculator script."
