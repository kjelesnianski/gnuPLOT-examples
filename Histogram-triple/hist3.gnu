#set terminal svg  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
#set output 'mistograms7.svg'

set terminal postscript eps size 7,1.4 enhanced color font 'Helvetica,10' linewidth 2
set output 'wrappp22.eps'

set bar 1.000000 front
set border 3 front lt black linewidth 1.000
set boxwidth 0.95 absolute
set style fill   solid 1.00 noborder
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linewidth 0.500,  lt 0 linewidth 0.500
set style histogram clustered gap 1 title textcolor lt -1 offset character 2, 0.25, 0
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
set xtics  norangelimit  font ",8"
set xtics   ()
set ytics border in scale 0,0 mirror norotate  autojustify
set ytics  norangelimit autofreq  font ",8"
set ztics border in scale 0,0 nomirror norotate  autojustify
set cbtics border in scale 0,0 mirror norotate  autojustify
set rtics axis in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics  rangelimit autofreq 
set paxis 2 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 2 tics  rangelimit autofreq 
set paxis 3 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 3 tics  rangelimit autofreq 
set paxis 4 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 4 tics  rangelimit autofreq 
set paxis 5 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 5 tics  rangelimit autofreq 
set paxis 6 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 6 tics  rangelimit autofreq 
set paxis 7 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 7 tics  rangelimit autofreq 
#set title "Wrapper Overhead of Popcorn Compiler" 
##set xlabel "(note: histogram titles have specified offset relative to X-axis label)" 
set xlabel  offset character 0, -1, 0 font "" textcolor lt -1 norotate
set xlabel " " 
#set bmargin 8
set ylabel "Slowdown" 
set key bmargin center Left reverse noenhanced autotitle columnhead nobox #horizontal
set key inside top right title " # of Threads" width 1
#set key inside top center horizontal title "Number of Running Threads" 
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
#set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
#set colorbox vertical origin 2.5, 0.2 size 0.05, 0.6, 0 front  noinvert bdefault
x = 0.0
i = 24
## Last datafile plotted: "immigration.dat"
plot \
newhistogram "A" lt 1, 'wrapperOverhead_At.dat' \
 using 2:xticlabel(1) t col, \
 '' u "2" t col, \
 '' u "4" t col, \
 '' u "8" t col linecolor rgb "#FF0000", \
newhistogram "B" lt 1, 'wrapperOverhead_Bt.dat' \
 using 2:xticlabel(1) notitle, \
 '' u "2" notitle, \
 '' u "4" notitle, \
 '' u "8" notitle linecolor rgb "#FF0000", \
newhistogram "C" lt 1, 'wrapperOverhead_Ct.dat' \
 using 2:xticlabel(1) notitle, \
 '' u "2" notitle, \
 '' u "4" notitle, \
 '' u "8" notitle linecolor rgb "#FF0000"

#plot \
#newhistogram "A" lt 1, 'wrapperOverhead_At.dat' \
# using 2:xticlabel(1) t col linecolor rgb "#FF0000", \
# '' u "2" t col linecolor rgb "#808000", \
# '' u "4" t col linecolor rgb "#008080", \
# '' u "8" t col linecolor rgb "#800080", \
#newhistogram "B", 'wrapperOverhead_Bt.dat' \
# using 2:xticlabel(1) linecolor rgb "#FF0000" notitle, \
# '' u "2" linecolor rgb "#808000" notitle, \
# '' u "4" linecolor rgb "#008080" notitle, \
# '' u "8" linecolor rgb "#800080" notitle, \
#newhistogram "C", 'wrapperOverhead_Ct.dat' \
# using 2:xticlabel(1) linecolor rgb "#FF0000" notitle, \
# '' u "2" linecolor rgb "#808000" notitle, \
# '' u "4" linecolor rgb "#008080" notitle, \
# '' u "8" linecolor rgb "#800080" notitle
