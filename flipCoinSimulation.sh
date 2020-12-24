echo "Welcome to Flip Coin Simulation"

#!/bin/bash -x

Toss=$((RANDOM%2))                              #Random value for heads or tails

if [[ $Toss -eq 1 ]]                            #if condition for random value
then
   echo "Heads"
else
   echo "Tails"
fi
