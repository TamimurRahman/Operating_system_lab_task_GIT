#!/bin/bash

# Function to allocate memory to blocks as per First fit algorithm
firstFit() {
    local -n blockSize=$1
    local m=$2
    local -n processSize=$3
    local n=$4

    # Stores block id of the block allocated to a process
    allocation=()

    # Initially no block is assigned to any process
    for ((i = 0; i < n; i++)); do
        allocation[$i]=-1
    done

    # Track if a block is already allocated
    declare -a blockAllocated
    for ((i = 0; i < m; i++)); do
        blockAllocated[$i]=false
    done

    # pick each process and find suitable blocks 
    # according to its size and assign to it 
    for ((i = 0; i < n; i++)); do
        for ((j = 0; j < m; j++)); do
            if [ "${blockAllocated[$j]}" == false ] && [ "${blockSize[$j]}" -ge "${processSize[$i]}" ]; then
                # allocate block j to process i
                allocation[$i]=$j
                blockAllocated[$j]=true

                # Reduce available memory in this block
                blockSize[$j]=$((blockSize[$j] - processSize[$i]))

                break
            fi
        done
    done

    # Calculate and display internal and external fragmentation
    totalInternalFragmentation=0
    totalExternalFragmentation=0
    for ((i = 0; i < m; i++)); do
        if [ "${blockAllocated[$i]}" == false ]; then
            totalExternalFragmentation=$((totalExternalFragmentation + blockSize[$i]))
        else
            totalInternalFragmentation=$((totalInternalFragmentation + blockSize[$i]))
        fi
    done

    echo -e "\nProcess No.\tProcess Size\tBlock no."
    for ((i = 0; i < n; i++)); do
        echo -n " $((i + 1))" $'\t\t'"${processSize[$i]}" $'\t\t'
        if [ "${allocation[$i]}" != -1 ]; then
            echo $((allocation[$i] + 1))
        else
            echo "Not Allocated"
        fi
    done
    echo -e "\nTotal Internal Fragmentation: $totalInternalFragmentation"
    echo "Total External Fragmentation: $totalExternalFragmentation"
}

# Main code
read -p "Enter the number of memory blocks: " m
declare -a blockSize
echo "Enter the sizes of memory blocks:"
for ((i = 0; i < m; i++)); do
    read blockSize[$i]
done

read -p "Enter the number of processes: " n
declare -a processSize
echo "Enter the sizes of processes:"
for ((i = 0; i < n; i++)); do
    read processSize[$i]
done

firstFit blockSize m processSize n
