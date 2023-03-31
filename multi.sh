#!/bin/bash

# Check if the correct number of arguments was provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 [directory path] [output csv file]"
    exit 1
fi

# Set the arguments to variables for easier use
directory_path=$1
output_file=$2

c_extensions=(
    "*.c"
    "*.h"
    "*.ec"
    "*.ecp"
    "*.pgc"
    "*.C"
    "*.cpp"
    "*.CPP"
    "*.cxx"
    "*.cc"
    "*.CC"
    "*.c++"
    "*.pcc"
    "*.pc"
    "*.sc"
    "*.hpp"
    "*.H"
    "*.h"
)

for extension in "${c_extensions[@]}"; do
    # Run flawfinder on the current directory and output to a temporary file
    for file in $(find "$directory_path" -name "$extension"); do
        dir_file=$(dirname "$file")
        # Check if had $dir_file/flawfinder_output.csv
        if [ ! -f "$dir_file/flawfinder_output.csv" ]; then
            PYTHONUTF8=0 flawfinder --csv "$dir_file" > "$dir_file/flawfinder_output.csv" &
        fi 
    done
done


wait

# Concatenate all the CSV files into the output file, skipping the first line of all but the first file
find "$directory_path" -name "flawfinder_output.csv" -exec awk 'FNR==1 && NR!=1{next;}1' {} + > "$output_file"

# Remove the temporary CSV files
# find "$directory_path" -name "flawfinder_output.csv" -exec rm {} +
