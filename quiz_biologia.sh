r1="mitocondri"
r2="i mitocondri"
p2="c"
nt=5
punti=0

while [ $nt -gt 0 ]
do
echo "quiz di biologia"
read -p "producono l'energia nella cellula:" p1

if [ "$p1" == "$r1" ] || [ "$p1" == "$r2" ]
then echo "esatto +5punti"
punti=$(( $punti + 5 ))
echo "hai $punti punti"
    nt=5 

    while [ $nt -gt 0 ]
    
    do

    p2="c"
    read -p "lo zigote è:       a-una cellula germinale     
                            b-una cellula germinale aploide     
                            c-unione tra cellula uovo e spermatozoo
            digitale solo la lettera della risposta corretta    " p3

    if [ "$p3" == "$p2" ] 
    
    then echo "esatto +5punti"
    punti=$(( $punti + 5 ))
    echo "hai $punti punti"
   
    break
    
    else 
    
    punti=$(( $punti - 5 ))
    nt=$(( $nt - 1 ))
    echo "risposta errata, tentativi rimasti $nt"
    echo "hai $punti punti"

    fi
    done
   
    break
else
punti=$(( $punti - 5 ))
nt=$(( $nt - 1 ))
echo "risposta errata, tentativi rimasti $nt"
echo "hai $punti punti"


fi


done