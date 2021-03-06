set terminal postscript eps enhanced 20
!rm meanrms36.eps
set output 'meanrms36.eps' 
set border lw 3
set format y "%4.2f"
set label "(c)" at 10,0.115
set xlabel "Time (day)"
set ylabel "Location averaged NRMSE" 
set xtics 365
set mxtics 12
plot './greplogfarima36.dat' u ($1/144):4:6 t 'F-ARIMA, 6 hour' w error lt 1 lw 5 ps 2\
pt 6 ,'./greploglfo36.dat' u ($1/144):4:6 t 'LFO, 6 hour' w error lt 1 lw 3 ps 1.5 pt 4\
, './greplogfarima36.dat' u ($1/144):4 not lt 1 lw 2.5 w l,'./greploglfo36.dat' u ($1/144):4:6 not lt 2 lw 2.5 w l
