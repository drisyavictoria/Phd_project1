!lfo-run -l2000 -m1,8 -d1 -L500 wsite1.dat -o lfo2000.dat
set terminal postscript eps enhanced  20
!rm 'lfo2000.eps'
set output 'lfo2000.eps'
set border lw 3
set format y "%0.1f"
set xlabel "Time (10 Min)"
set ylabel "Wind Speed (80M/S)"
set label "(a)" at 2019,7.5
set key left 
set ytics 0.5
p [1980:2023][2.5:8.0]  './wsite1.dat' t 'Actual' lt 2 lw 2.5 pt 6 ps 1.2 w lp,'./lfo2000.dat' u ($0+2000):1 t 'Prediction' lt 1 lw 2.5 pt 7 ps 1.2 w lp
#p [1950:2036]  './wsite1.dat' t 'Actual' lt 2 lw 2.5 pt 6 ps 1.2 w lp,'./lfo2000.dat' u ($0+2000):1 t 'Prediction' lt 1 lw 2.5 pt 7 ps 1.2 w lp
#    EOF

