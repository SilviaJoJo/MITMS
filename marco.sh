#!/bin/bash

marco() {
    dir=$(pwd)
}

polo() {
    cd "$dir" || return 1
}

# Here are comments:
# 1. dir=xxx means we save something into dir, notice there is no space
# 2. $(command), here command is pwd (show the current working directory)
# 3. in bash script, any variable is global, so I can use dir in polo
# 5. "$xxx", here xxx is something that can be interpreted
# 6. || return 1 means if any errors occur, report 1 as signal