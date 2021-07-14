function file_count() {
    for DIRECTORY in $@
    do
        echo "${DIRECTORY}:"
        local count=$(ls -lrt $DIRECTORY | wc -l)
        echo "$count"
    done
}

file_count /etc /var /usr/bin

#function should be defined on top
#local keyword should be used for creating variables inside function
#by default all the variables are global, if variables are declared inside function it will be available globally once the function is executed
#function parameter can be accessed using $1, $2.. etc else $@ can be used to get all arguments
