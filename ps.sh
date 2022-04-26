echo "ps ax na minimalkah"
echo --------  -------  ------- $'\t' -------
echo PID $'\t' PPID $'\t' STATE $'\t'$'\t' COMMAND
for numpc in /proc/[0-9]*
do
a=$(cat $numpc/status | grep -E ^Pid | awk '{print $2}')
b=$(cat $numpc/status | grep -E ^PPid | awk '{print $2}')
c=$(cat $numpc/status | grep -E State | awk '{print $2 $3}')
d=$(cat $numpc/cmdline)
echo "${a}" $'\t' "${b}" $'\t' "${c}" $'\t' "${d}"
done
