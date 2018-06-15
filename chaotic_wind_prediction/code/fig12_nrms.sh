#!/bin/bash

#finding range 
#rm range.dat
#FILES=wlc_*.dat
#for f in $FILES ; do
#   a=`sort -g $f|head -1`
#   b=`sort -g $f|tail -1`
#   c=$(echo $b - $a|bc -l)
#   echo $f   $c >> range.dat
#   echo $f   $c 
#done

#adding range to each rms data file
FILES1=rms*.dat
for f in $FILES1 ; do
   b=${f:3:5}
#   sed '1,2d' $f >infile
   a=`grep  $b range.dat`
   while read time m d rms ; do
      echo $time "  " $m " " $d "  "  $rms "  " $a>>nwlc${f:3:5}.dat
   done < $f
   #rm infile
done


#extracting each time RMS error
for k in {0..35}; do
   xv=$(($k*4320)); 
   grep  "^$(($xv+4320)) "  nwlc*.dat > ttest$(($xv+4320))
done

#fit to find average with error
rm fit.log
for k in {0..35}; do
   xv=$(($k*4320));
   cp ttest$(($xv+4320)) testt
   gnuplot ff.gnu
   rm testt
   echo -n $(($xv+4320)) ' '  >>greplogrbf6.dat
   grep '+/-' fit.log >> greplogrbf6.dat
   rm fit.log
done

