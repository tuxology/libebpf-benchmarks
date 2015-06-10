# This generates plots for multicore performance of UST+Dyninst vs SystemTap+Dyninst
# Its also has a graph within a graph to enhance results of 1 to 8 thread tests

#set terminal svg dynamic enhanced mousing butt solid 
#set output 'ebpf-pure.svg'
set size 1,1
set terminal pdf size 3.5,3
set output 'ebpf-pure-predicates.pdf'

set multiplot

#set boxwidth 2.00 absolute
set style fill solid 1.00 border lt -1
set key inside left top vertical Right noreverse noenhanced autotitles box
set key spacing 1.4
set style histogram clustered gap 1 title  offset character 0, 0, 0
set datafile missing '-'
set style line 1 lt -1 lw 3 pt 5 ps 0.7 lc rgb "grey"
set style line 2 lt -1 lw 3 pt 7 ps 0.7
set style line 3 lt -1 lw 3 pt 9 ps 0.7
set style data linespoints
#set xtics border in scale 0,0 nomirror offset character 0, 0, 0 autojustify
#set xtics  norangelimit
#set xtics   () 
#set xtics 1, 1, 64
set title font 'Arial Bold, 14' "Pure eBPF Filter Performance with Increasing \n Number of Predicates" 
#set xrange [ 1 : 64 ] noreverse nowriteback
#set logscale y
set xlabel font "Arial Bold,12"
set ylabel font "Arial Bold,12"
set xlabel "Number of Predicates"
set ylabel "Time (s)"
#set grid ytics
set grid mytics
#i = 22
plot 'ebpf-pure-predicates.dat' using 2:xtic(1) ti col ls 1, '' u 3 ti col ls 2, '' u 4 ti col ls 3


# The graph within a graph starts here

#set size 0.5, 0.6
#set origin 0.12, 0.2
#set title " "
#set nokey
##set xrange [0:10]
##set yrange [0:100]
#set xtics font ',8'
#set ytics font ',8'
#set xlabel ""
#set ylabel ""
#set grid

#plot 'ebpf-pure.dat' using 2:xtic(1) ti col, '' u 4 ti col
unset multiplot
