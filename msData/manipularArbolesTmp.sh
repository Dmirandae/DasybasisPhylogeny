echo "tread 'Arboles'" > x0 | cat $1* | grep -v tread | tr -d ";" | tr -d "*" | grep -v trees | sort | uniq | sed 's/)$/)*/g' >> x0
