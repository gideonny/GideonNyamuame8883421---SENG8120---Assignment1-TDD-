#!/bin/bash

#Function to calculate volume of a rectangular prism
calculate_volume() {
    echo $(( $1 * $2 * $3 ))
}
