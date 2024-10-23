
for fileNumber in {0..70}; do
	cp arbolPiwe$fileNumber.tre tmp
	cat tmp | grep "(" > arbolPiwe$fileNumber.tree
    echo "Processing file $fileNumber.txt"
done



#~ cat arbolPiwe.tre | grep "("
