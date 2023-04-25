#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$PSQL "TRUNCATE teams,games"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
  if [[ $YEAR != 'year' ]]
  then
    # Check team whether exists in table-teams
    WINNER_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    # Add team into table
    if [[ -z $WINNER_NAME ]]
    then
      INSERT_STATUS=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi

    OPPONENT_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    # Add team into table
    if [[ -z $OPPONENT_NAME ]]
    then
      INSERT_STATUS=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi


    # Adding table-games
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    INSERT_STATUS=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$YEAR','$ROUND',$WIN_ID,$OPP_ID,$W_GOALS,$O_GOALS)")
  
  fi
done