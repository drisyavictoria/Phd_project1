set terminal postscript eps enhanced 20
!rm meanrms12.eps
set output 'meanrms12.eps' 
set border lw 3
set label "(c)" at 15,.095
set format y "%4.2f"
set xlabel "Time (day)"
set ylabel "Location averaged NRMSE" 
set xtics 365
set mxtics 12
plot [][0:.1] './greploglfo12.dat' u ($1/144):4:6 t 'LFO, 2 hour' w error lt 1 lw 3 ps 1.5 pt 6
