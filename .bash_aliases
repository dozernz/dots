function _fnmap() {
    HOST=`echo $1`
    sudo nmap -T4 -Pn -v --open "${HOST}"
}

function _fw(){
    #find on whole disk case insensitive with wildcards
    NAME=$1       
    find / -iname "*${NAME}*" 2>/dev/null
}


function _apu() {
    sudo apt update -y
    sudo apt dist-upgrade -y
    sudo apt autoremove -y
    sudo apt clean -y
}

function _countext() {
    find . -type f | rev | cut -d '/' -f1 | fgrep '.' | cut -d '.' -f1 | rev | uniq -c | sort -n
}


alias grep='grep --color'
alias fgrep='fgrep --color'
alias fgrpe='fgrep'
alias rg='rg --no-heading -iuuu'
alias cp='cp -i'
alias mv='mv -i'
