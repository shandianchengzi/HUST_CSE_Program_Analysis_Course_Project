cd unicorn
git reset --hard $1
gitstats ../unicorn/ ../html/unicorn/
flawfinder --html > ../html/unicorn-$2.html ../unicorn 
cd ..