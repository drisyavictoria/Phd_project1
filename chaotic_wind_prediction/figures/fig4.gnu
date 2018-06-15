# false_nearest -l52703 -t7 -d85 -f4.0 -M1,30 wsite1.dat -o
f(x)=a*x+b
set terminal postscript eps enhanced  20
!rm 'fnnori.eps'
set output 'fnnori.eps'
set border lw 3
set format y "%0.1f"
set xlabel "Embedding dimension"
set ylabel "Fraction of false nearest neighbours"
set arrow from 14,.125 to 22,.125 lt 1 lw 2
set label"m {/Symbol \263} 14" at 16.5,0.1505  
p [:30][-0.1:] './wsite1.dat.fnn' not w lp lt 1 lw 2  pt 6 ps 1
#    EOF
