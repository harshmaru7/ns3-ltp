set terminal pdf
set output "fig3.pdf" 
set title "Figure 3" 
set ylabel "Goodput(kilobytes/s)" 
set xlabel "Link Delay(seconds)" 
set xrange [0:1000]
set grid ytics lc rgb "#bbbbbb" lw 2 lt 0
set grid xtics lc rgb "#bbbbbb" lw 2 lt 0
plot "LTP-ErrorRate-0-RTT-1-0.dat" using 1:4 with linespoints title "BER=0", \
     "LTP-ErrorRate-1e-05-RTT-1-0.dat" using 1:4 with linespoints title "BER=10E-5", \
     "LTP-ErrorRate-1e-06-RTT-1-0.dat" using 1:4 with linespoints title "BER=10E-6"
"LTP-ErrorRate-0-RTT-1-0.dat" using 1:4 with linespoints title "BER=0", \
"error5.dat" using 1:2:3 with yerrorbars linestyle 1 linecolor rgb "red" title "BER=10E-5"
