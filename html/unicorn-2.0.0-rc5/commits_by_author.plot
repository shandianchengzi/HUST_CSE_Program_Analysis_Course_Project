set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Nguyen Anh Quynh" w lines, 'commits_by_author.dat' using 1:3 title "lazymio" w lines, 'commits_by_author.dat' using 1:4 title "Chris Eagle" w lines, 'commits_by_author.dat' using 1:5 title "xorstream" w lines, 'commits_by_author.dat' using 1:6 title "Ryan Hileman" w lines, 'commits_by_author.dat' using 1:7 title "Jonathon Reinhart" w lines, 'commits_by_author.dat' using 1:8 title "mio" w lines, 'commits_by_author.dat' using 1:9 title "Stephen" w lines, 'commits_by_author.dat' using 1:10 title "Andrew Dutcher" w lines, 'commits_by_author.dat' using 1:11 title "Chen Huitao" w lines, 'commits_by_author.dat' using 1:12 title "mothran" w lines, 'commits_by_author.dat' using 1:13 title "Sascha Schirra" w lines, 'commits_by_author.dat' using 1:14 title "Adrian Herrera" w lines, 'commits_by_author.dat' using 1:15 title "practicalswift" w lines, 'commits_by_author.dat' using 1:16 title "danghvu" w lines, 'commits_by_author.dat' using 1:17 title "farmdve" w lines, 'commits_by_author.dat' using 1:18 title "Willi Ballenthin" w lines, 'commits_by_author.dat' using 1:19 title "Dominik Maier" w lines, 'commits_by_author.dat' using 1:20 title "naq" w lines, 'commits_by_author.dat' using 1:21 title "chfl4gs" w lines
