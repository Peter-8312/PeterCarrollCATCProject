#!/bin/bash

# Function to validate yes/no inputs
validate_yes_no() {
    read -p "$1 (yes/no): " input
    while [[ "$input" != "yes" && "$input" != "no" ]]; do
        echo "Invalid input. Please enter 'yes' or 'no'."
        read -p "$1 (yes/no): " input
    done
}

# Ask user for starting salary
read -p "Enter starting salary: " starting_salary

# Validate starting salary input
while ! [[ "$starting_salary" =~ ^[0-9]+$ ]]; do
    echo "Invalid input. Please enter a valid starting salary (numeric value)."
    read -p "Enter starting salary: " starting_salary
done

# Ask user for number of points on the salary scale
read -p "Enter number of points on the salary scale: " num_points

# Validate number of points input
while ! [[ "$num_points" =~ ^[0-9]+$ ]]; do
    echo "Invalid input. Please enter a valid number of points (numeric value)."
    read -p "Enter number of points on the salary scale: " num_points
done

# Ask user for salary increment
read -p "Enter salary increment: " salary_increment

# Validate salary increment input
while ! [[ "$salary_increment" =~ ^[0-9]+$ ]]; do
    echo "Invalid input. Please enter a valid salary increment (numeric value)."
    read -p "Enter salary increment: " salary_increment
done

# Ask user for manager status
validate_yes_no "Is the employee a manager?"

# Set the number of increments based on manager status
if [[ "$input" == "yes" ]]; then
    num_increments=2
else
    num_increments=1
fi

# Display header
printf "%-10s %-10s\n" "Year" "Salary"

# Calculate and display salary scales
current_year=$(date +%Y)
for ((i = 0; i < num_points; i++)); do
    salary=$(echo "$starting_salary + $i * $salary_increment * $num_increments" | bc)
    year=$((current_year + i / num_increments))
    printf "%-10s %-10s\n" "$year" "$salary"
done


