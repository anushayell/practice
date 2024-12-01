#!/bin/bash

working_dir=$(pwd)
new_dir="practice"

mkdir  $working_dir/$new_dir
cd  $working_dir/$new_dir

n=1
while [ $n -le 10 ]; do
  touch files${n}.txt
  echo "welcome to bash world ${n} " > files${n}.txt
  ((n++))
done

echo "created  the files with data"
