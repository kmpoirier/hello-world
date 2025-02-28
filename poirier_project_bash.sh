#! /bin/bash
### Make this a bash script that can be executed by putting
### a "shebang" at the top of the file

echo "It works!"

### Execute command that prints every command as it is executed

### (1) In your home directory make a directory called RAW_DATA
mkdir -pv $HOME/RAW_DATA
echo RAW_DATA directory created!

### (2) Copy all .fna fasta files  
###     from home directory into RAW_DATA (must work from any directory.)

gzip -d $HOME/ *.fna.gz
cp *.fna $HOME/RAW_DATA
echo copied .fna files into RAW_DATA

### (3) Do the same with all primer files ending with .csv
cp *.csv $HOME/RAW_DATA
echo copied .csv files into RAW_DATA

### (4) In your home directory, make 2 directories: P_DATA and RESULTS
mkdir -p $HOME/P_DATA
mkdir -p $HOME/RESULTS
echo P_DATA and RESULTS directories created!

### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS
PATH=$PATH:$HOME/RAW_DATA
PATH=$PATH:$HOME/P_DATA
PATH=$PATH:$HOME/RESULTS
echo all  directories in PATH

### (6) Write your entire $PATH, the name RAW_DATA and the 
###    contents of this directory (the names of the files) into a new file 
###    called 'readme.txt' in your home directory

$PATH:$HOME/RAW_DATA > ~/readme.txt
echo readme.txt created with path

### (7) The last command should dump the contents of readme.txt
###     to the terminal.
cat readme.txt
echo show readme.txt
