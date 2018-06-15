#!/bin/bash
FILES=wlc_*.dat
for f in $FILES ; do
	cp wlc${f:3:6}.dat wlce
	for k in {0..35}; do
		xv=$(($k*4320)); 
		lb=$(($xv+4320+1))
		le=$(($xv+4320+6))
		sed -n "${lb},${le}p" wlce|awk '{print $1}' > wlc.o

		for i in {5..14}; do            
		for j in {1..10}; do
			rbf -V0 -n4320 -l$(($xv+4320)) -m$i -d$j -p500 -L6  wlce -o wlce.rbf
                        tail -6 wlce.rbf > wlce_min$(($xv+4320)).p
   			echo -n  $(($xv+4320))  "  "  $i "    " $j "  ">> rms_min$(($xv+4320)).dat 
			cp wlce_min$(($xv+4320)).p wlc.p
  		  	./myrms1 >> rms_min$(($xv+4320)).dat
			rm wlc.p wlce_min$(($xv+4320)).p
		done
		done

	sed 's/-//' rms_min$(($xv+4320)).dat | sed 's/inf/100000000.0/' | sed 's/nan/100000000.0/' > rms_min.dat 
		sort -gk 4 -r rms_min.dat |tail -1 >> rms${f:4:5}.dat 
   		echo -n  $(($xv+4320))  "  " >> time.dat 
                date >> time.dat
		rm wlc.p
		rm wlc.o
		rm wlce_min$(($xv+4320)).p
		rm rms_min$(($xv+4320)).dat
		rm *$(($xv+4320))*
                rm rms_min.dat
	done
	rm wlce
done
