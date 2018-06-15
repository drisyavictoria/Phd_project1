set terminal postscript eps enhanced 20
!rm trmsaverage6.eps
set output 'trmsaverage6.eps' 
set border lw 3
set label "(b)" at 0,0.095
set format y "%4.2f"
set xlabel "Locations"
set ylabel "Time averaged NRMSE" 
set xtics 50
set mxtics 5
f(x)=a
fit f(x) './trmsaverage6.dat' u 0:4 via a
plot [-5:250][0:.1]'./trmsaverage6.dat' u 0:4:6 t 'LFO, 1 hour' w error lt 1 lw 3 ps 1.5 pt 6, f(x) not lt 2 lw 2.5 
