#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo  "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo  "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals + opponent_goals) FROM games")"

echo  "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"

echo  "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals),2) FROM games")" 

echo  "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT AVG(winner_goals + opponent_goals) FROM games")"

echo "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT MAX(winner_goals) FROM games")"

echo "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT COUNT(*) FROM games WHERE winner_goals > 2")"

echo "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT name FROM teams INNER JOIN games ON teams.team_id=games.winner_id WHERE year=2018 AND round='Final'")"

echo "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT name FROM teams INNER JOIN games ON teams.team_id = games.winner_id OR teams.team_id= games.opponent_id WHERE year=2014 AND round='Eighth-Final' ORDER BY name")"

echo "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT name FROM games INNER JOIN teams ON teams.team_id=games.winner_id GROUP BY name ORDER BY name")"

echo "\nYear and team name of all the champions:"
echo "$($PSQL "SELECT year, name FROM games INNER JOIN teams ON teams.team_id=games.winner_id WHERE round='Final' ORDER BY year")"

echo "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%' ORDER BY name")"
