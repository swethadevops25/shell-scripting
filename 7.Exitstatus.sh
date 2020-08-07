#!/bin/bash

#exit 10

sample() {
    echo hello
    echo first argument = $1
    return 20
    echo bye

}

sample abc
echo Exit status of sample function = $?
