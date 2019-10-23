#!/bin/bash

# short interactive bash script 
# usage: ./conversation.sh

# JKe 10/2019

read -p "What's your name? " name
figlet "Hello $name !"

read -p "Do you like git already? " gitlike
if [[ "$gitlike" =~ ^(yes|y|YES|Yes|Y)$ ]]; then
    echo "that is so great! i think it can also enhance your science!"
else
    echo "WHY NOT? If you need more motivation... check out this homepage:"
    echo "https://www.nobledesktop.com/blog/what-is-git-and-why-should-you-use-it"
fi

read -p "Would you like to chat more? " chatmore
if [[ "$chatmore" =~ ^(no|n|NO|No|N)$ ]]; then
    echo "Ok... bye bye."
    exit
else
    echo "Great! let's talk..." 
    sleep 2s
    read -p "Would you like to hear more about git? " moregit
    if [[ "$moregit" =~ ^(yes|y|YES|Yes|Y)$ ]]; then
        echo "I recommend to check out these pages to start with!"
        echo "https://git-scm.com/book/en/v2/"
        echo "Also: checkout this git cheat sheet!"
        echo "https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf"
        echo "I hope this helps to get you started! "
    else
        read -p "Would you like to hear a joke? " hearjoke
        if [[ "$hearjoke" =~ ^(yes|y|YES|Yes|Y)$ ]]; then
            echo " Unknown Fact: You can be cooled to -273.15C and be 0K. "
            read -p "Alright, alright, I have another joke... do you want to hear it? " morejokes
            if [[ "$morejokes" =~ ^(yes|y|YES|Yes|Y)$ ]]; then
                echo "OK! HEEEERE IT COMES!"
                echo " Why can’t you trust an atom? ... "
                sleep 5s
                echo " Because they make up everything! "
                sleep 10s
                echo "HAHAHAHAH! Can't stop laughing... now, you should get back to getting familiar with git!"
            fi
        else
            echo "Ok. Then I have nothing to tell you... bye!"
        fi
    fi
fi

