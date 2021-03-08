while true;
do
 a=$(curl -ss  inr.rate.sx/1xmr)
 b=$(curl -ss https://api.nanopool.org/v1/xmr/balance/YOUR WALLET| jq ".data")
 echo "$a * $b " | bc -l
 echo "$a * $b"| bc -l >> log.txt
 echo $(date) >> log.txt 
 sleep 15m
done
