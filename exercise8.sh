#!/bin/bash

# It will change the word love to like and display it on the screen and it is case sensitive
# sed 's/love/like/' ./test/test.txt

# It will change the word love to like and display it on the screen and it is not case sensitive
# sed 's/love/like/i' ./test/test.txt

# It will change the word love to like and display it on the screen and it will change all occurences
# If g flag is not used, only first occurence of the word on the line will be changed
# sed 's/love/like/ig' ./test/test.txt

# To write to a new file
# sed 's/love/like/ig' ./test/test.txt > ./test/newfile.txt

# To write to a original file
# sed -i 's/love/like/ig' ./test/test.txt

# To write to a original file and take the backup of original file
# sed -i.bak 's/love/like/ig' ./test/test.txt

# It will change only first line
# sed '1 s/love/like/ig' ./test/test.txt

# It will change line 1 to 3
# sed '1,3 s/love/like/ig' ./test/test.txt

# To remove a line which matches the word football
# sed '/football/d' ./test/test.txt

# To remove a empty line
# sed '/^$/d' ./test/test.txt

# To remove a line starting with #
# sed '/^#/d' ./test/test.txt

# To pass multiple parameter
# sed '/^#/d ; s/love/like/ig ; /^$/d' ./test/test.txt

# This approach can also be used to pass multiple parameter
# sed -e '/^#/d' -e 's/love/like/ig' -e '/^$/d' ./test/test.txt

# Printing file content and substituting/deleting the lines
cat ./test/test.txt | sed -e '/^#/d' -e 's/love/like/ig' -e '/^$/d'