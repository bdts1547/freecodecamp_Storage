#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
FLAG=0

# refactor
# chore
#test
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  ELEMENTS=$($PSQL "SELECT * FROM elements")
  while read NUM B SYM B NAME
  do
    # Exist
    if [[ $1 == $NUM || $1 == $SYM || $1 == $NAME ]]
    then
      FLAG=1
      TYPE=$($PSQL "SELECT type FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number=$NUM OR symbol='$SYM' OR name='$NAME'")
      MASS=$($PSQL "SELECT atomic_mass FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number=$NUM OR symbol='$SYM' OR name='$NAME'")
      MELT=$($PSQL "SELECT melting_point_celsius FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number=$NUM OR symbol='$SYM' OR name='$NAME'")
      BOIL=$($PSQL "SELECT boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number=$NUM OR symbol='$SYM' OR name='$NAME'")
      
      TYPE=$(echo $TYPE | sed -r 's/^ *| *$//g')
      MASS=$(echo $MASS | sed -r 's/^ *| *$//g')
      MELT=$(echo $MELT | sed -r 's/^ *| *$//g')
      BOIL=$(echo $BOIL | sed -r 's/^ *| *$//g')

      echo "The element with atomic number $NUM is $NAME ($SYM). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
    fi
  done <<< "$(echo -e "$ELEMENTS")"

  if [[ $FLAG == 0 ]]
  then
    echo "I could not find that element in the database."
  fi

fi
  


