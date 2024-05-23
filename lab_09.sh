#!/bin/bash

echo -n "Enter the number of blocks: "
read blocknum

block=()
bf=()

echo "Enter the size of the blocks:-"
for ((i = 0; i < blocknum; i++)); do
    echo -n "Block $((i+1)): "
    read size
    block[$i]=$size
    bf[$i]=0
done

echo -n "Enter the number of files: "
read filenum

file=()

echo "Enter the size of the files:-"
for ((i = 0; i < filenum; i++)); do
    echo -n "File $((i+1)): "
    read size
    file[$i]=$size
done

echo "File_no File_size Block_no Block_size Fragment"

for ((i = 0; i < filenum; i++)); do
    file_no=$((i + 1))
    file_size=${file[$i]}
    block_no=0
    block_size=0
    fragment=0

    for ((j = 0; j < blocknum; j++)); do
        if ((block[j] >= file_size && bf[j] == 0)); then
            block_no=$((j + 1))
            block_size=${block[$j]}
            fragment=$((block_size - file_size))
            bf[j]=1
            break
        fi
    done

    if ((block_no == 0)); then
        echo "$file_no $file_size $block_no $block_size $fragment"
    else
        echo "$file_no $file_size $block_no $block_size $fragment"
    fi
done
