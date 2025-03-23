#!/bin/bash

# touch test.sh
# chmod +x test.sh
# ./test.sh

# simple command with variable
GREET="Hello World!"
echo $GREET

# command with argument
# ./srcipt.sh lala will print out 'lala'
for arg1 in "$@"
do
echo $arg1
done

# sleep
echo "Hello there!"
sleep 2
echo "Oops! I fell asleep for a couple seconds!"
