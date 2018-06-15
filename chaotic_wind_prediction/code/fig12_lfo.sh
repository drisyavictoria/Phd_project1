#!/bin/bash
FILES=wlc_*.dat
for f in $FILES ; do
	cp wlc${f:3:6}.dat wlce
	for k in {0..35}; do
		xv=$(($k*4320)); 
		lb=$(($xv+4320+1))
		le=$(($xv+4320+36))
		sed -n "${lb},${le}p" wlce|awk '{print $1}' > wlc.o

		for i in {5..14}; do            
		for j in {1..10}; do
			lfo-run -l$(($xv+4320))  -m1,$i -d$j -L36 -k3200 wlce  -o wlc.p
   			echo -n  $(($xv+4320))  "  "  $i "    " $j "  ">> rms_min$(($xv+4320)).dat  
			./myrms >> rms_min$(($xv+4320)).dat
			rm wlc.p 
		done
		done
     	sort -gk 4 -r rms_min$(($xv+4320)).dat |tail -1 >> rms${f:4:5}.dat
	rm rms_min$(($xv+4320)).dat 
	rm wlc.o
	done
	rm wlce
done
