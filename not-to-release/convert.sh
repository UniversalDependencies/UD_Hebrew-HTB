#!/bin/bash

udapy -h >/dev/null || { echo "udapy is not installed, see https://github.com/udapi/udapi-python"; exit 1; }

SCENARIO="ud.Convert1to2 ud.he.FixNeg ud.SetSpaceAfter"
for a in train dev test; do
    cat he-ud-$a.conllu | udapy -s $SCENARIO util.Eval bundle="bundle.bundle_id = '$a-'+bundle.bundle_id" > ../he-ud-$a.conllu
done

cat ../he-ud-{train,dev,test}.conllu | udapy -HAMC ud.MarkBugs skip='no-(VerbForm|NumType|PronType)|det-upos' > bugs.html
