reset
set terminal postscript eps enhanced  20
!rm 'autocor.eps'
set output 'autocor.eps'
set size 1.0,1.0
set origin 0.0,0.0
set multiplot
set border lw 3
set xlabel "Delay"
set ylabel "Autocorrelation" 
set format "%.1f"
set label "(a)" at 3,.15
p  [:150] './wsite1.dat_co'  not w lp lt 2 lw 3 pt 4 ps 1
reset
set size 0.575,0.575
set origin 0.39,0.39
set format y "%0.1f"
set label "(b)" at 88,4.0
set xlabel "Deley"
set ylabel "Mutual Information"
set ytics 0,.5,4.5
p [:100][0:4.5]  './wsite1.dat.mut' not w lp lt 1 lw 3  pt 6 ps 1
set nomultiplot
#######################

#    EOF
