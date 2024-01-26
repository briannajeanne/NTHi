#!/bin/bash

# Script Usage: ./script.sh <path_to_jar_file> <path_to_tree_file> <path_to_csv_file>

# Help Menu
show_help() {
    echo "Usage: ./script.sh <path_to_jar_file> <path_to_tree_file> <path_to_csv_file>"
    echo ""
    echo "Options:"
    echo "  <path_to_jar_file>      Path to the JAR file for the Java program."
    echo "  <path_to_tree_file>     Path to the tree file for processing."
    echo "  <path_to_csv_file>      Path to the CSV file for presence/absence from pirate run."
    echo ""
    echo "Example: ./script.sh myprogram.jar tree.nwk data.csv"
    echo ""
    echo "This script uses a Java program to process a tree file and a CSV file."
    echo "It generates an annotated tree based on the presence/absence information."
}

# Check if the required number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Error: Invalid number of arguments!"
    show_help
    exit 1
fi

# Assign command line arguments to variables
path_jar=$1
nwk=$2
csv=$3

# Execute the Java program
java -jar $path_jar --tree $nwk --presenceAbsence $csv --createAnnotatedTree

