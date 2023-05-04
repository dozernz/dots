function fnmap() {
    HOST=`echo $1`
    sudo nmap -T4 -Pn -v --open "${HOST}"
}

function apu() {
    sudo apt update -y
    sudo apt dist-upgrade -y
    sudo apt autoremove -y
    sudo apt clean -y
}


alias grep='grep --color'
alias fgrep='fgrep --color'
alias fgrpe='fgrep'
alias rg='rg --no-heading -iuuu'
alias cp='cp -i'
alias mv='mv -i'
