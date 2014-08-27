#!/bin/bash
cd /programming-tasks/bash/
find -type f -name 'zalora-*' | xargs rename 's/zalora/Zalora/' # using Perl regexp here
for fname in Zalora-* 
do
cat $fname | tr [a-z] [A-Z] > $fname
cat $fname | sed 's/\.//' > $fname 		# Perl regexp again
done;

