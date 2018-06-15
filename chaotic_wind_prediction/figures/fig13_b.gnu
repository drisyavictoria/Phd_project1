set terminal postscript eps enhanced  20
#set terminal pdf enhanced font "Helvetica, 20"
!rm 'lfo8640.eps'
set output 'lfo8640.eps'
set border lw 3
set format y "%3.0f"
set xlabel "Time (10 Min)"
set ylabel "Wind Speed (m/s)"
set label "(b)" at 8560,10.5
#set key left bottom

plot [8550:8880] 'wlce' pointinterval 3 lt 1 lw 3 pt 6 ps 1.5 w lp t 'Actual',\
'wlc_8_7_86.p' u ($0+8640):1 pointinterval 3 lt 1 lw 3 pt 7 ps 1.5 w lp t 'LFO',\
 'farima8640.txt' u ($0+8640):1 pointinterval 3 lt 1 lw 3 pt 5 ps 1.4 w lp t 'f-ARIMA'


