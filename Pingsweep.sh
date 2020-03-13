#set the variable prefix to the first arg
PREFIX=$1

#echo message
echo "Scanning $PREFIX.0/24..."

#use seq to loop 1 to 5
for i in $(seq 1 255)
 do
# This prints our earlier set variable as it loops through the sequence
  TARGET="$PREFIX.$i"
 # echo "$TARGET"
# this pings the IP address based on the prefix that the user enters
# Then it pushes the output and errors to null 
# Following that, it will echo a statement if the addresses are UP or DOWN 
  ping -c 1 $TARGET >> /dev/null 2>&1 && echo "$TARGET is up" >> liveHosts.txt || echo "$TARGET is down" >> downHosts.txt
done
