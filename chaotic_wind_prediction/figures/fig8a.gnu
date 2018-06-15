#!lfo-run -l51840  -m1,12 -d2 -L100 -k3200 wlc_00108.dat  -o wlc.p
#rbf -V0 -n4320 -l51840 -m5 -d3 -p1000 -L500  wlc_00108.dat  -o rbf108.p
set terminal postscript eps enhanced  20
!rm 'rlforbf108.eps'
set output 'rlforbf108.eps'
set border lw 3
set format y "%0.1f"
set xlabel "Time (10mins)"
set ylabel "Wind speed(m/s)"
set offsets 0,1,0.1,0
set key left
p [51800:51920] './rwlc_00108.dat'  t 'Actual' w lp lt 1 lw 2 pt 6 ps 1.5,'./rwlc108.p' u($0+51840):1  t  'LFO'  w lp pointinterval 3 lt 2 lw 2 pt 7 ps 1.5,'./rwlce108.test' u($0+51840):1  t  'RBF'  w lp pointinterval 3 lt 2 lw 2 pt 8 ps 1.5
