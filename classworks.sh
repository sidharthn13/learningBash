checkIfMultiple() {
    if [ $2 -eq 0 ]; then
    echo "error: cannot divide by 0"
    return 1
    fi
    if (( $1%$2 == 0 )); then
    echo "$1 is a multiple of $2"
    return 0
    else 
    echo "$1 is not a multiple of $2"
    return 1
    fi
}

checkIfMultiple 11 5
echo $?
