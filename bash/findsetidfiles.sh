#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
#find in root location, search of files and executes permission uid file> 4000- is the value for uid file finding
#disposing the error and sorting in the 3rd column.
echo ""
echo "Setgid files:"
echo "============="
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 6
#Find in root, search for files and executes permission gid file as 2000 is the value for gid file,
#disposing the unwanted output with 2>/dev/null and sorting in 6th column as required.
echo ""
echo "The 10 largest regular files in the system:"
echo "========================================="
echo ""
find / -type f -exec ls -alh --block-size=M {} \; 2>/dev/null | sort -hr -k 5 | head -n 10 | cut -d' ' -f9,5,3- | awk '{print $3, $4, $2, $1}'
#Find in root, then search for files and executes lists of files in directory with all and long listing (alh),
#after this conversion of size from bytes to MB. Sorting of 5th column then prints first 10 lines.
#Next cut -d option cut columns
#AWK command prints 3,4,2,1 column. as some has time in field so.