#!/bin/bash

# 1. Compile the C code
gcc myfilter.c -o myfilter

if [ $? -ne 0 ]; then
    echo "ERROR: Compilation failed. Aborting."
    exit 1
fi

# 2. Execute the filter program
#./myfilter samples.txt resultsC.txt
./myfilter samples.txt resultsC_n.txt

# 3. Check the exit status of the filter program
if [ $? -eq 0 ]; then
    echo "SUCCESS: resultsC.txt created successfully."
else
    echo "ERROR: The C program exited with status $?."
    echo "Check C code for exit(1), exit(2), or exit(3) conditions."
fi 