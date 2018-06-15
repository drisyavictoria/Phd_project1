set terminal postscript eps enhanced 20
!rm meanrms18.eps
set output 'meanrms18.eps' 
set label "(e)" at 15,.115
set border lw 3
set xlabel "Time (day)"
set ylabel "Location averaged NRMSE" 
set format y "%4.2f"
set xtics 365
set mxtics 12
plot [][0:0.12]'./greploglfo18.dat' u ($1/144):4:6 every 2 t 'LFO, 3 hour' w error lt 1 lw 3 ps 1.5 pt 6
