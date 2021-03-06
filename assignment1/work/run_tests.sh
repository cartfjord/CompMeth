#!/bin/sh

FOLDER_NAME=runs
mkdir -p ${FOLDER_NAME}

for fft_size in 64 256 1024 4096
do
    for test in 0 1 2 
    do 
        (./fft $fft_size $test > ${FOLDER_NAME}/run_fft${fft_size}_test${test}.m &)
    done
done

wait
echo "All tests completed."

exit 0