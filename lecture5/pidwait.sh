pidwait() {
    # 1. Define a local veriable called pid and assign a value to it
    # use 'local' to mark pid as a local variable
    # notice that there should be no spaces when assigning values
    # $1 represents the first argument passes into the function
    local pid=$1

    # 2. Check and wait for the process to complete using a while loop
    # kill -0, unlike kill, will not send a SIGTERM signal
    # but it will give a nonzero exit status if the process does not exit (therefore can be used to check existence)
    # "$xxx" is used to reference the value of a variable, whose name is xxx
    # command ->stream1 2> stream2
    while kill -0 "$pid" >/dev/null 2>/dev/null; do
        sleep 1
    done

    # If the process (refered to by a given pid) completes, then it does not exist any more
    # When we use kill -0 to check, kill -0 will exit with a nonzero exit status (exit the whole function)
    # Otherwise, the terminal will continue to wait
}
