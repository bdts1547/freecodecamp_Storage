#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
echo "Enter your username:"
read USERNAME
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")


if [[ -z $USER_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAY=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(best_game) FROM games WHERE user_id=$USER_ID")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAY games, and your best game took $BEST_GAME guesses."
fi

GUESS_NUMBER() {
  if [[ -z $1 ]]
  then
    echo "Guess the secret number between 1 and 1000:"
  else
    echo "$1"
  fi

  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    GUESS_NUMBER "That is not an integer, guess again:"
  else
    ((COUNT++))
    if [[ $GUESS -lt $SECRET_NUMBER ]]
    then
      GUESS_NUMBER "It's lower than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      GUESS_NUMBER "It's higher than that, guess again:"
    else
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
      INSERT_GAME=$($PSQL "INSERT INTO games(user_id, best_game) VALUES($USER_ID, $COUNT)")
      echo "You guessed it in $COUNT tries. The secret number was $GUESS. Nice job!"
    fi
  fi

}

COUNT=0
GUESS_NUMBER

# fix: