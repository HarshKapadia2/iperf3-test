set title "Throughput achieved on a 100 Gbps link" font "Sans Serif, 15"
set xlabel "No. of iperf3 instances" font "Sans Serif, 12"
set ylabel "Total throughput (Gbps)" font "Sans Serif, 12"
set nokey

set grid
set border 3
set tics nomirror

set xrange[-1:8]
set yrange[0:110]

set style data histogram
set style histogram rowstacked
set style fill solid 0.7 border lt -1

# set terminal png
# set output "histogram.png"

# plot  "throughputs.dat" using 3:xtic(1), \
# 	'' using 4, \
# 	'' using 5, \
# 	'' using 6, \
# 	'' using 7, \
# 	'' using 8, \
# 	'' using 9, \
# 	'' using 10, \
# 	'' using 0:2:2 with labels offset 0, char 1

plot "throughputs.dat" \
	using 3:xtic(1), \
	for[i=4:10] '' using i, \
	'' using 0:2:2 with labels offset 0, char 1, \
	for [j=3:10] '' using ($0+j-3): \
		((sum [k=3:j-1] column(k))+column(j)*0.5):j every ::j-3 with labels

