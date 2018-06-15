#!/bin/bash
FILES=wlc_*.dat
for f in $FILES ; do
	
	cp wlc${f:4:6}.dat wlce

	for k in {0..35}; do
		xv=$(($k*4320)); 
		lb=$(($xv+4317+1))
		le=$(($xv+4317+3))
		sed -n "${lb},${le}p" wlce|awk '{print $1}' > wlc.o

		for i in {5..15}; do            
		for j in {1..10}; do
			lfo-run  -l$(($xv+4317))  -m1,$i -d$j -L3 -k3200 wlce  -o wlc.p
   			echo -n  $(($xv+4317))  "  "  $i "    " $j "  ">> rms_min$(($xv+4317)).dat  
			./myrms1 >> rms_min$(($xv+4317)).dat 
		done
		done
		
		rm wlc.o
		rm wlc.p
       	m=$(sort -gk 4 -r rms_min$(($xv+4317)).dat |tail -1| awk '{print $2}' )
		d=$(sort -gk 4 -r rms_min$(($xv+4317)).dat |tail -1| awk '{print $3}' )
		lfo-run  -l$(($xv+4320))  -m1,$m -d$d -L36 -k3200 wlce  -o wlc.p
		echo -n  $(($xv+4320))  "  " $m  "  " $d "  "  >> rms${f:4:6}.dat
		lb=$(($xv+4320+1))
		le=$(($xv+4320+36))
		sed -n "${lb},${le}p" wlce|awk '{print $1}' > wlc.o
		./myrms >> rms${f:4:6}.dat
		rm wlc.p
		rm wlc.o
		rm rms_min$(($xv+4317)).dat 
	done
done
