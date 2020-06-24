set terminal pdf
set output "fig5.pdf" 
set title "Figure 4" 
set ylabel "Goodput(kilobytes/s)" 
set xlabel "Link Delay(seconds)" 
set grid ytics lc rgb "#bbbbbb" lw 2 lt 0
set grid xtics lc rgb "#bbbbbb" lw 2 lt 0
plot  "tcp0.dat" using 1:3 with linespoints dt '-' linecolor rgb "blue" title "BER=0", \
      "ltp6.dat" using 1:2 with line dt '-' linecolor rgb "blue" title "","ltp6.dat" using 1:2:3 with yerrorbars linecolor rgb "blue" title "BER=10E-6",\
     "ltp5.dat" using 1:2 with line dt '-' linecolor rgb "blue" title "","ltp5.dat" using 1:2:3 with yerrorbars linecolor rgb "blue" title "BER=10E-5" 
     
