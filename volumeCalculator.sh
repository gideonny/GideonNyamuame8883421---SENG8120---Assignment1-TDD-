#!/bin/bash

#Function to calculate volume of a rectangular prism
calculate_volume() {
    local length=$1
    local width=$2
    local height=$3

    if ((length < 0 || width < 0 || height < 0)); then
        echo "Error: Dimensions must be positive numbers."
        return 1
    fi

    if ((length == 0 || width == 0 || height == 0)); then
        echo "Error: At least one dimension is zero. Shape is no longer a 3D shape therefore volume is zero."
        return 1
    fi
    echo $(( $1 * $2 * $3 ))
}
