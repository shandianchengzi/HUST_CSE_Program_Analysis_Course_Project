#!/bin/bash

# Check if the correct number of arguments was provided
# if [ "$#" -ne 2 ]; then
#     echo "Usage: $0 [directory path] [output csv file]"
#     exit 1
# fi

# Set the arguments to variables for easier use
dir_path=$1
output_file=output/$2

dir_list=$(ls -d ${dir_path}/*/)

for dir_one in ${dir_list}; do
    echo $dir_one
    # flawfinder --csv > "$dir_one/_flawfinder-output.csv" $dir_one
    PYTHONUTF8=0 flawfinder --csv > "$dir_one/_flawfinder_output.csv" $dir_one
done

wait

# Concatenate all the CSV files into the output file, skipping the first line of all but the first file
find "$dir_path" -name "_flawfinder_output.csv" -exec awk 'FNR==1 && NR!=1{next;}1' {} + > "$output_file"

# Remove the temporary CSV files
# find "$dir_path" -name "_flawfinder_output.csv" -exec rm {} +
# find "$dir_path" -name "flawfinder_output.csv" -exec rm {} +