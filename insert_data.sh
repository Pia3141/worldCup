#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams") 

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WGOALS OGOALS
do
  if [[ $YEAR != "year" ]]
    then
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'") #get team_id
      
      #if not found
       if [[ -z $TEAM_ID ]]
        then
      #insert team
        INSERT_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
        echo $INSERT_TEAMS
      #get new  team_id
        TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
       fi
       

    fi
  if [[ $YEAR != "year" ]]
    then
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'") #get team_id
      
      #if not found
       if [[ -z $OPPONENT_ID ]]
        then
      #insert team
        INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
        echo $INSERT_OPPONENT
      #get new  team_id
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'") #get team_id

       fi
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $TEAM_ID, $OPPONENT_ID, $WGOALS, $OGOALS)")
    echo $INSERT_GAME

    fi
    
done
