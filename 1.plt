set terminal pdf
set output "d.pdf" 
set title "Check" 
set ylabel "Goodput(kilobytes/s)" 
set xlabel "Link Delay(seconds)" 
set grid ytics lc rgb "#bbbbbb" lw 2 lt 0
set grid xtics lc rgb "#bbbbbb" lw 2 lt 0
plot "check.dat" using 1:4 with linespoints title "BER=10E-6"
