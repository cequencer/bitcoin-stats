set xdata time
set xlabel "Date"
set ylabel "PoW-equivalent days"
set timefmt "%s"
set format x "%b '%y"
set key top left
set title "Bitcoin network: proof-of-work equivalent days"
set terminal png large enhanced size 1280,800
set output "powdays-ever.png"
set ytics nomirror tc lt -1
set grid x y
plot "predictW-ever.dat" using 1:4 with line title "7-day window estimate", \
     "predictM-ever.dat" using 1:4 with line title "30-day window estimate"

set terminal png large enhanced size 2560,1440
set output "powdays-large-ever.png"
replot

set format x "%m'%y"
set terminal png small enhanced size 720,480
set output "powdays-small-ever.png"
replot
