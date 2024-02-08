#!/usr/bin/bash
palindromeCheck() {
    declare -i num
    echo "enter a number: "
    read num
    result=0
    numDupe=$num
    while (( $numDupe!=0 )); do
        onesPlace=$(($numDupe%10))
        result=$(($result*10+$onesPlace))
        numDupe=$(($numDupe/10))
    done
    if (($result==$num)); then
        echo "it is a palindrome"
    else
        echo "it is not a palindrome"
    fi
}
palindromeCheck