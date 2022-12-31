cd unicorn
git reset --hard $1
gitstats ../unicorn/ ../html/unicorn-$2/
flawfinder --html > ../html/unicorn-$2/_flawfinder-$2.html ../unicorn
cd ..