echo "Welcome to Flip Coin Simulation"
#!/bin/bash -x

#variables
heads=0
tails=0
headsToss=0
tailsToss=0
Toss=$((RANDOM%2))
while [[ $heads -lt 21 ]]                         #for heads less than 21 
do
   Toss=$((RANDOM%2))
   if [[ $Toss -eq 0 ]]
   then
      ((heads++))
   fi
  ((headsToss++))
done

while [[ $tails -lt 21 ]]                         #for tails less than 21 
do
    Toss=$((RANDOM%2))
   if [[ $Toss -eq 1 ]]
   then
      ((tails++))
   fi
   ((tailsToss++))
done

while [[ $heads -eq $tails ]]                     #for heads equal to tails
do
   while [[ $heads -lt 23 && $tails -lt 23 ]]     #for heads and tails less than 23
   do
     Toss=$((RANDOM%2))
     if [[ $Toss -eq 0 ]]
     then
       ((heads++))
     else
       ((tails++))
     fi
     ((headsToss++))
     ((tailsToss++))
   done
done

echo "Tosses count :" $heads
echo "Heads count :" $tails
echo "Number of times coin flipped for 23 heads" $headsToss
echo "Number of times coin flipped for 23 tails" $tailsToss
