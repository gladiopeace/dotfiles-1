#!/bin/bash
alias ll="ls -lh"
alias lla="ls -lha"
alias ..="cd .."
alias ...="cd ../.."

# For applying changes after editing aliases or scripts
alias bashreload="source ~/.bash_profile"

# List all paths in windows PATH variable. This is sometimes useful when fighting with $PATH on Windows.
function lspath()
{
    echo "";
    echo "Listing paths in \$PATH env variable"
     # IFS changed on the same line as 'read', therefor IFS change is local
    IFS=: read -ra ITEMS <<< "$PATH"
    COUNTER=0

    for pathItem in "${ITEMS[@]}"; do
        let COUNTER+=1
        if [ $COUNTER -lt 10 ]; then
            echo " $COUNTER   $pathItem"
        else
            echo " $COUNTER  $pathItem"
        fi
    done
}