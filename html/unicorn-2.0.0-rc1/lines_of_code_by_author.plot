set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "Nguyen Anh Quynh" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Chris Eagle" w lines, 'lines_of_code_by_author.dat' using 1:4 title "xorstream" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Ryan Hileman" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jonathon Reinhart" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Stephen" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Andrew Dutcher" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Chen Huitao" w lines, 'lines_of_code_by_author.dat' using 1:10 title "mothran" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Sascha Schirra" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Adrian Herrera" w lines, 'lines_of_code_by_author.dat' using 1:13 title "practicalswift" w lines, 'lines_of_code_by_author.dat' using 1:14 title "danghvu" w lines, 'lines_of_code_by_author.dat' using 1:15 title "farmdve" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Willi Ballenthin" w lines, 'lines_of_code_by_author.dat' using 1:17 title "naq" w lines, 'lines_of_code_by_author.dat' using 1:18 title "chfl4gs" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Sean Heelan" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Catena cyber" w lines, 'lines_of_code_by_author.dat' using 1:21 title "samothtronicien" w lines
