#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

$PSQL "TRUNCATE TABLE games, teams"
echo "tables ready";


cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
  do
    if [[ $YEAR != "year" ]]
    then
      # query db if win team exists
      WIN_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

      # if WIN TEAM does not exist, insert
      if [[ -z $WIN_TEAM_ID ]]
      then
        $PSQL "INSERT INTO teams(name) VALUES('$WINNER')"
        WIN_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        echo inserted team $WINNER into teams;
      fi

      # query db if opp team exists;
      OPP_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

      #insert team if it does not exist;
      if [[ -z $OPP_TEAM_ID ]]
      then
        $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')"
        OPP_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        echo inserted team $OPPONENT into teams;
      fi

      # insert game record
      $PSQL "INSERT INTO games(
        year,
        round,
        winner_id,
        opponent_id,
        winner_goals,
        opponent_goals
      )
      VALUES(
        $YEAR,
        '$ROUND',
        $WIN_TEAM_ID,
        $OPP_TEAM_ID,
        $W_GOALS,
        $O_GOALS
      )
      "
    fi
  done
