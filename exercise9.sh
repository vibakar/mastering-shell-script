# Changing file permission has two approaches

# 1st approach:
# chmod 777 <filename>
# Above command will assign execution permission to all 

# chmod 655 <filename>
# Above command will assign read and write permission to current user, read and execution permission to users group and others.


# 1st 7 => Current User
# 2nd 7 => Current User's group
# 3rd 7 => Other users and groups

# Read permission has a value 4
# Write permission has a value 2
# Execution permission has a value 1
# All the above permissions added to form value 7

# 2nd approach
# chmod a+x <filename>
# Above command will assign execution permission to all 

# chmod ug+rw <filename>
# Above command will assign read and write permission to current user and group
# a => It includes user, groups, others
# u => User
# g => group
# o => others

# r -> read
# w -> write
# x -> executable
