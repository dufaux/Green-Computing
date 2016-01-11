#@author Maxime Clement & Johan Dufaux & Antoine Philippe

#/local/dufaux/scala-2.11.7/bin/scalac Hanoi/Scala/hanoi.scala -d Hanoi/Scala
jobs &>/dev/null 
/local/dufaux/scala-2.11.7/bin/scala hanoi $1 &
new_job_started="$(jobs -n)"
if [ -n "$new_job_started" ];then
    VAR=$!
else
    VAR=
fi
echo $VAR
../../powerapi-iagl-3.3/bin/powerapi 84 50 $VAR
mv powerapi.out powerapi_hanoi_scala_recu.out
