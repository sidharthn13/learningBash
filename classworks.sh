
#!/usr/bin/bash

printInversePyramid() {
declare -i num
 printf "enter a number "
 read num
    for ((i=$num ; i>=1 ; i--)); do
        for ((j=i ; j>=1 ; j--)); do
            printf "*"
        done
    printf "\n"
    done
}

printInversePramidMirrored() {
    declare -i num
    printf "enter a number"
    read num
        for ((i=$num; i>=1; i--)); do
        whiteSpace=$(($num-$i))
            for ((j=0; j<$whiteSpace; j++)); do
            printf " "
            done
            for ((k=$i; k>=1; k--)); do
            printf "*"
            done
        printf "\n"
        done
}

printOneZeroTriangle(){
    declare -i num
    printf "enter a number "
    read num
    declare -i flag=1
    for ((i=1; i<=$num; i++)); do
        whiteSpace=$(($num-$i))
        for ((j=0; j<$whiteSpace; j++)); do
            printf " "
        done
        for ((k=0; k<$i; k++)); do
            if (($flag==1)); then
                printf "%d" 1
                flag=0
            else
                printf "%d" 0
                flag=1
            fi
        done
        printf "\n"
        flag=1
    done
}

printInversePyramid
printInversePramidMirrored
printOneZeroTriangle