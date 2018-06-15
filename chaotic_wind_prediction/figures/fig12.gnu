set terminal postscript eps enhanced 20
!rm meanrms1hrlforbf.eps
set output 'meanrms1hrlforbf.eps' 
set border lw 3
set format y "%4.2f"
set xlabel "Time (day)"
set ylabel "Location averaged NRMSE" 
set xtics 365
set mxtics 12
set ytics 0.01
#set key center top
plot [] [0:0.03] \
'./greploglfo6.dat' u($1/144):4:6 t 'LFO, 1 hour' w error lt 1 lw 3 ps 1.5 pt 4,\
'./greplogrbf6.dat' u($1/144):4:6 t 'RBF, 1 hour' w error lt 1 lw 3 ps 1.5 pt 6,\
'./greploglfo6.dat' u($1/144):4 not w l lt 1 lw 3,\
'./greplogrbf6.dat' u($1/144):4 not w l lt 1 lw 3
