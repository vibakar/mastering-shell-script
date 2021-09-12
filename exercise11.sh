#!/bin/bash

# Content in database.txt
# Lamborgini red 1
# BMW yellow 2
# Tesla white 3

# By default TAB is a delimeter
cat database.txt | cut -f 1

# Using space as delimeter
cat database.txt | cut -d " " -f 1,3

# Using space as delimeter and using range for field
cat database.txt | cut -d " " -f 1-3

# Printing the first field
cat database.txt | cut -d "a" -f 1

# Prints rest of field except first
cat database.txt | cut -d " " -f 1 --complement

# Selects first 2 bytes for all lines
cat database.txt | cut -b 1,2

# Using range, Selects first 4 bytes for all lines
cat database.txt | cut -b 1-4

# Selects first 2 character for all lines
cat database.txt | cut -c 1,2

# Using range, Selects first 4 character for all lines
cat database.txt | cut -c 1-4

# Selects everything on the line
cat database.txt | cut -c 1-

# Selects first 3 characters on the line
cat database.txt | cut -c -3

# This option allows you to specify a different output delimiter string
cat database.txt | cut -d " " --output-delimiter="_" -f 1-3
