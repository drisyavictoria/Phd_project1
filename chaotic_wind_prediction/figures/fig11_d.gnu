set terminal postscript eps enhanced 20
!rm trmsaverage12.eps
set output 'trmsaverage12.eps' 
set label "(d)" at 0,0.095
set border lw 3
set format y "%4.2f"
set xlabel "Locations"
set ylabel "Time averaged NRMSE" 
set xtics 50
set mxtics 5
f(x)=a
fit f(x) './trmsaverage12.dat' u 0:4 via a
plot [-5:250][0:.1]'./trmsaverage12.dat' u 0:4:6 t 'LFO, 2 hour' w error lt 1 lw 3 ps 1.5 pt 6, f(x) not lt 2 lw 3
