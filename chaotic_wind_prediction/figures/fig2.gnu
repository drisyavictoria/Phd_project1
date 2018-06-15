set term post eps enhanced  22
!rm 'stpo.eps'
set boxwidth 1
set output 'stpo.eps'
set boxwidth 3
set xlabel "Relative time {/Symbol D}t"
set ylabel "Distance"
#set mxtics 4
p [:1000][:20] 'wind_stp' not w l
#    EOF
