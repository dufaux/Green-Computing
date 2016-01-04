#@author Maxime Clement & Johan Dufaux & Antoine Philippe

jobs &>/dev/null 
php Hanoi/PHP/Recursive/Main.php $1 &
new_job_started="$(jobs -n)"
if [ -n "$new_job_started" ];then
    VAR=$!
else
    VAR=
fi
echo $VAR
./powerapi-iagl-3.3/bin/powerapi 84 100 $VAR
mv powerapi.out powerapi_hanoi_php_recu.out
