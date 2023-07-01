#!/usr/bin/env bash

myFunction() {
    n=$(( RANDOM % 100 ))

    if [[ n -eq 42 ]]; then
        echo "Something went wrong"
        >&2 echo "The error was using magic numbers" 
        #>2 output.txt (redirect to a file) or >2& (redirect to stderr)
        exit 1
    fi

    echo "Everything went according to plan"
}

# Initialize the variable "times" to 0
times=1

# Use a while loop to repeat the function until an error occurs
# 1. run the upper function
# 2. capture its standard output to file standard.txt (print everything to the end)
# 3. capture its error streams to error.txt (print everything to the end)
# 4. [while] checks whether myFunction works well, not its return value!
while myFunction >> standard.txt 2>> error.txt; do
    echo "Script ran successfully $times times"
    ((times++))
done
# If any error occurs in myFunction, the 'exit 1' will cause the whole bash script to exit
# In other words, anything below the while loop will not be executed
# If I want to only exit myFunction, without exiting the entire script, I should change exit 1 to return 1