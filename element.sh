#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# check if argument exists
if [[ -z "$1" ]]
then
  echo "Please provide an element as an argument."
else
# check if input is numeric or string
  if [[ "$1" =~ ^[0-9]+$ ]]
  then
    WHERE_CLAUSE="e.atomic_number = $1"
  elif [[ "$1" =~ ^[A-Z][a-z]?$ ]]
  then
    WHERE_CLAUSE="e.symbol = '$1'"
  else
    WHERE_CLAUSE="e.name = '$1'"
  fi
  
# query the database
  RESULT=$($PSQL "SELECT e.atomic_number, e.name, e.symbol, t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius FROM elements e JOIN properties p USING(atomic_number) JOIN types t USING(type_id) WHERE $WHERE_CLAUSE;")

fi
