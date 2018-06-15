f(x)=a*x+b
set terminal postscript eps enhanced  20
!rm 'lyapori.eps'
set output 'lyapori.eps'
set border lw 3
#set label "Lyap Ext = 0.15 +/- 0.006" at 50, -2
set format y "%0.1f"
set xlabel "{/Symbol D}n"
set ylabel "S({/Symbol D}n)"
fit [1:15] f(x) './wsite1.dat.lyap' via a,b
p [0:100][:0] './wsite1.dat.lyap' not w lp lt 1 lw 2  pt 6 ps 1, f(x) not lt 2 lw 3
#    EOF
