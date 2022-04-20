#flip Coin Simulator
declare -A simulator
h=0
t=0
for ((i=0; i<1000; i++))
do
flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
	h=$((h+1))
else
	t=$((t+1))
fi
done
simulator=(["Heads"]=$h ["Tails"]=$t)
for coin in "${!simulator[@]}";
do
	echo $coin - ${simulator[$coin]};
done
headPercent=`expr $h / 10`
tailPercent=`expr 100 - $headPercent`
echo "Head percent: $headPercent"
echo "Tail percent: $tailPercent"

