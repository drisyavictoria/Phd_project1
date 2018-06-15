set terminal postscript eps enhanced  20
!rm 'wsite2050.eps'
set output 'wsite2050.eps'
set border lw 3
set format y "%0.1f"
set xlabel "Time (10 min)"
set ylabel "Wind Speed (80 m/s)"
unset key
p[1:2050]  './wlc' w lp
