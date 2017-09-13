#!/usr/bin/env bash
# File: guessinggame.sh

function CR {
  if [[ $1 -gt $2 ]]
  then
    clear
    echo "You guessed too high. Try again."
  elif [[ $1 -lt $2 ]]; then
    clear
    echo "You  guessed too low. Try again."
  elif [[ $1 -eq $2 ]]; then
    echo "EXACTLY RIGHT"
    let flag=1
  else
    echo "That's not a valid entry, Steve. Try Again."
  fi
}

flag=0
clear
while [[ $flag -eq 0 ]]
do
  echo "Guess how many files are in this directory:"
  read response
  count=$(ls | wc -l)
  CR $response $count
done
