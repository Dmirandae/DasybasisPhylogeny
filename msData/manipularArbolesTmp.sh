echo "tread 'Arboles'" > arbolesBootEvTotal   | cat tmp | grep -v  "()" | sed 's/);/)*/g' | grep -v tre  | grep -v partial|  sort | uniq  >> arbolesBootEvTotal 

tnt p totalEvidenceDasybasis-2024-10-19.mtr \; piwe=26 \; p arbolesBootEvTotal \; taxn= \; export= bootEvtotalPiwe26.tree \; zz 

