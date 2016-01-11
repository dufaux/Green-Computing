#@author Maxime Clement & Johan Dufaux & Antoine Philippe

gcc Hanoi.c -O2 -o Hanoi_O2
jobs &>/dev/null
chmod 700 Hanoi
./Hanoi_O2 $1 &
new_job_started="$(jobs -n)"
if [ -n "$new_job_started" ];then
    VAR=$!
else
    VAR=
fi
echo $VAR
../../powerapi-iagl-3.3/bin/powerapi 84 100 $VAR
mv powerapi.out powerapi_hanoi_c-o2.out
