echo "k;p%;supported;compatible;Nsupported;Ncompatible;averDist" > leer
cat $1 | grep -4 piwe | grep -v Note | grep -v tempo | grep -v Stri  | tr "\n" "\t" | sed 's/piwe /\n/g' | sed 's/Stability indices, for p(del)=/;/g' | sed 's/, compatible /;/g' | sed 's/	    Normalized: supported/;/g' | sed 's/	    Average distortion coeff.: /;/g'| sed 's/	    Supported /;/g' | sed 's/--//g' | tr "\t" " "  | sed -r 's/ ;/;/g'  | sed -r 's/; /;/g' | sed -r 's/ ;/;/g' | sed 's/Again reading/\nDELETE/g' | sed 's/Total rearrangements examined/\nDELETE/g' | grep -v DELETE | grep -v ^$ | tr -d "%" >> leer

#~ | sed 's//;/g'
