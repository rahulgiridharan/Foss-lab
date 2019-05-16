#!/bin/bash

for i in {100..999};
do
          j=`expr  $i / 100`;
          if [ $j -eq 1 | $j -eq 2 | $j -eq 3 ]
          then
                     k=`expr $i % 100`;
                     l=`expr $k / 10`;
                     m=`expr $k % 10`;
                 if [ $l -eq 1 | $l -eq 2 | $l -eq 3 | $l -eq 0 ]
                 then
                 if [ $m -eq 1| $m -eq 2| $m -eq 3 | $m -eq 0 ]
                 then
                 echo  $i

                            fi
                 fi
          fi
done
