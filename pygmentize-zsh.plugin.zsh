#Determin if pygmentize is installed

isinstalled=$(which pygmentize)

if [ $? = 0 ]; then
  somevar='true'
else 
  echo "pygmentize is not installed"
  echo "on ubuntu/debian do sudo apt-get install python-pygments/apt-get install python-pygments"
  echo "on fedora/redhat do yum install python-pygments"
  echo "on OSX Lion do sudo easy_install Pygments"
fi

#colored cat
alias pcat='pygmentize'

#colored less
function pless() {
    pcat "$1" | less -R
}
#colored diff
function pdiff() {
  diff -u "$1" "$2" | pygmentize -l diff
}
