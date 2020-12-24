echo "Welcome to Flip Coin Simulation"
#!/bin/bash -x

#Variables
heads=0
tails=0
Toss-$((RANDOM%2))
for(( i=1;i<=10;i++ ))                          #for loop for generating 10 random numbers
do
   if [[ $((RANDOM%2)) -eq 0 ]]                 #if condition for random value
   then
      ((heads++))
   else
      ((tails++))
   fi
done
echo "Tosses count :" $heads
echo "Heads count :" $tails
