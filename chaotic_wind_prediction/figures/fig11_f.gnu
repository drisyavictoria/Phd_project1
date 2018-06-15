set terminal postscript eps  enhanced 20
!rm trmsaverage18.eps
set output 'trmsaverage18.eps' 
set label "(f)" at 0,0.115
set border lw 3
set xlabel "Locations"
set ylabel "Time averaged NRMSE" 
set format y "%4.2f" 
set xtics 50
set mxtics 5
f(x)=a
fit f(x) './trmsaverage18.dat' u 0:4 via a
plot [-5:250][0:0.12]'./trmsaverage18.dat' u 0:4:6 t 'LFO, 3 hour' w error lt 1 lw 3 ps 1.5 pt 6, f(x) not lt 2 lw 2.5 
