echo "Welcome to Flip Coin Simulation"
#!/bin/bash -x

#variables
heads=0
tails=0
Toss=$((RANDOM%2))
while [[ $heads -lt 21 && $tails -lt 21 ]]       #while for heads less than 21 and tails less than 21
do
   Toss=$((RANDOM%2))
   if [[ $Toss -eq 0 ]]                          #if condition for random value
   then
      ((heads++))
   else
      ((tails++))
   fi
done
echo "Tosses count :" $heads
echo "Heads count :" $tails
