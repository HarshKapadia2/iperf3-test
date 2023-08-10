set title "Throughput achieved on a 100 Gbps link" font "Sans Serif, 15"
set xlabel "No. of iperf3 instances" font "Sans Serif, 12"
set ylabel "Total throughput (Gbps)" font "Sans Serif, 12"
set nokey

set grid
set border 3
set tics nomirror

set xrange[0:9]
set yrange[0:110]

# set terminal png
# set output "line-point.png"

plot "data_file.dat" using 1:2 with linespoints linecolor "black" \
	linewidth 2 linetype 7, \
	'' using 1:2:2 with labels offset -1, char 1
