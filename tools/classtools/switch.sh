cd ../../unicorn
git reset --hard $1
gitstats ../unicorn/ ../output/unicorn-$2/
flawfinder --html > ../output/unicorn-$2/_flawfinder-$2.html ../unicorn
cd ..