# NTHi

this contains the collection of scripts that I used for the NTHi paper. 

Below is a README file for the script `homoplasy_finder_help.sh`:

---

# Tree Annotation Script

## Description
This script is designed to facilitate the annotation of a tree file using a Java program. It takes as input a tree file (in Newick format) and a CSV file containing presence/absence information. The script then utilizes a Java program to generate an annotated tree based on this information.

## Prerequisites
- Java Runtime Environment (JRE) installed on your system
- Tree file in Newick format (.nwk)
- CSV file containing presence/absence information

## Usage
```bash
./homoplasy_finder_help.sh <path_to_jar_file> <path_to_tree_file> <path_to_csv_file>
```
- `<path_to_jar_file>`: Path to the JAR file for the Java program.
- `<path_to_tree_file>`: Path to the tree file (in Newick format) for processing.
- `<path_to_csv_file>`: Path to the CSV file containing presence/absence information.

## Example
```bash
./script.sh myprogram.jar tree.nwk data.csv
```
This command will execute the script using `myprogram.jar` as the Java program, `tree.nwk` as the tree file, and `data.csv` as the CSV file.

## Help
To display the help menu and usage instructions, run the script without any arguments or with an incorrect number of arguments:
```bash
./script.sh
```

## Notes
- Ensure that the Java program (JAR file) provided as input supports the required functionalities.
- The script assumes that the provided tree file is in Newick format and the CSV file contains appropriate presence/absence information.

