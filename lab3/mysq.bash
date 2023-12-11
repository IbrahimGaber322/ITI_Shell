#!/bin/bash

mysq() {
    local num=$1
    echo $((num * num))
}

# Example usage:
result=$(mysq 5)
echo "Square: $result"

