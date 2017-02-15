#!/bin/bash

# TODO add ud.SetSpaceAfter
SCENARIO="ud.Convert1to2 ud.he.FixNeg"
for a in train dev test; do
    cat he-ud-$a.conllu | udapy -s $SCENARIO util.Eval bundle="bundle.bundle_id = '$a-'+bundle.bundle_id" > ../he-ud-$a.conllu
done

cat ../he-ud-{train,dev,test}.conllu | udapy -HAMC ud.MarkBugs skip='no-(VerbForm|NumType|PronType)|det-upos' > bugs.html
