#!/bin/bash
printGreatestSmallest() {
    if (($# == 0)); then
        echo "no arguments received"
        return
    fi
    declare -i smallest=$1
    declare -i largest=$2
    for val in $@; do
        if (($val <= $smallest)); then
            smallest=$val
        fi
        if (($val>=$largest)); then
            largest=$val
        fi
    done
    echo -e "the smallest among the input is : $smallest\nthe largest among the input is : $largest"
}
printGreatestSmallest 4 2