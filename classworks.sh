#!/bin/bash
checkRightAngled() {
    declare -i s1=$1
    declare -i s2=$2
    declare -i s3=$3
    if (( $s1 * $s1 + $s2 * $s2==$s3 * $s3)); then
        echo "it is a right angled triangle"
    else
        echo "it is not a right angled triangle"
    fi
}
checkRightAngled 4 3 5