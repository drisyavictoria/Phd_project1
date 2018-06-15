set terminal postscript eps enhanced  20
!rm 'd2.eps'
set output 'd2.eps'
set border lw 3
set xlabel "{/Symbol e}"
set ylabel "D_2({/Symbol e},m)"
# set label "D_2({/Symbol e},m) = 1.656 +/- 0.008" at 0.06,3
set format y "%3.1f"
set logscale x
set xtics (0.025, .05,  0.075,    .1) 
f(x)=a
fit [0.055:.07] f(x) './wsite1.dat.d2' i 13:18  via a
p [0.025:0.12][0:4]  './wsite1.dat.d2' i 13:18 not w l lt 1 lw 3, f(x) not lt 2 lw 3
#    EOF
