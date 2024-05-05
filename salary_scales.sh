#!/bin/bash

# Ask user for starting salary, number of points, and salary increment
read -p "Enter starting salary: " starting_salary
read -p "Enter number of points on the salary scale: " num_points
read -p "Enter salary increment: " salary_increment

# Check if the employee is a manager
read -p "Is the employee a manager? (yes/no): " is_manager

# Set the number of increments based on manager status
if [[ "$is_manager" == "yes" ]]; then
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

