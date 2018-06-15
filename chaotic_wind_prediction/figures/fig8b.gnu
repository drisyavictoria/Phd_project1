#!lfo-run -l25920  -m1,5 -d8 -L500 -k3200 wlc_00318.dat  -o wlc.p
#rbf -V0 -n4320 -l25920 -m12 -d1 -p500 -L150  wlc_00318.dat  -o rbf318.p
set terminal postscript eps  enhanced  20
!rm 'rlforbf318.eps'
set output 'rlforbf318.eps'
set border lw 3
set format y "%3.0f"
set xlabel "Time (10 Min)"
set ylabel "Wind Speed (m/s)"
set label "(b)" at 8560,10.5
set key left top
p [25830:26050] './rwlc_00318.dat'  t 'Actual' w lp lt 1 lw 2 pt 6 ps 1.5,'./rwlc318.p' u ($0+25920):1  t  'LFO'  w lp pointinterval 3 lt 2 lw 2 pt 7 ps 1.5,'./rwlce.test' u ($0+25920):1  t  'RBF'  w lp pointinterval 3 lt 2 lw 2 pt 8 ps 1.5
