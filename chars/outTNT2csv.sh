echo "k;p%;supported;compatible;Nsupported;Ncompatible;averDist" > leer
cat $1 | grep -4 piwe | grep -v Note | grep -v tempo | grep -v Stri  | tr "\n" "\t" | sed 's/piwe /\n/g' | sed 's/Stability indices, for p(del)=/;/g' | sed 's/, compatible /;/g' | sed 's/	    Normalized: supported/;/g' | sed 's/	    Average distortion coeff.: /;/g'| sed 's/	    Supported /;/g' | sed 's/--//g' | tr "\t" " "  | sed -r 's/ ;/;/g'  | sed -r 's/; /;/g' | sed -r 's/ ;/;/g' >> leer
#~ | sed 's//;/g'
