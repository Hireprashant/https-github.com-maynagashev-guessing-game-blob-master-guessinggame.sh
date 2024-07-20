#!/bin/bash

function guess {
  local file_count=$(ls -1 | wc -l)
  local guess=-1

  while [[ $guess -ne $file_count ]]; do
    echo "Guess the number of files in the current directory:"
    read guess
    if [[ $guess -lt $file_count ]]; then
      echo "Too low."
    elif [[ $guess -gt $file_count ]]; then
      echo "Too high."
    fi
  done

  echo "Congratulations! You guessed the correct number of files."
}

guess
