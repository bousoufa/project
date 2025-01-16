#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  ls -1 | wc -l
}

# Main game logic
play_game() {
  local correct_count=$(count_files)
  local user_guess

  while true; do
    echo "How many files are in the current directory? Guess:"
    read user_guess

    if [[ $user_guess -lt $correct_count ]]; then
      echo "Your guess is too low. Try again!"
    elif [[ $user_guess -gt $correct_count ]]; then
      echo "Your guess is too high. Try again!"
    else
      echo "Congratulations! You guessed the correct number of files."
      break
    fi
  done
}

# Start the game
play_game
