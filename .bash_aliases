# This is V-I-m
alias vmi='vim'

# My local IP
alias lip='ifconfig eth0 | grep "inet addr" | cut -d ":" -f 2 | cut -d " " -f1'

# My external IP
alias eip='curl http://ifconfig.me'

# Ping google
alias poogle='ping google.com'

# Decimal to hexadecimal value
alias dec2hex='printf "%x\n" $1'

#ls exploration
alias lr='ls -R'
alias ll='ls -lF'
alias llr='ll -R'
alias lll='ls -alF'
alias le='ls --sort=extension'
alias lle='ll --sort=extension'
alias lt='ls --sort=time'
alias llt='ll --sort=time'

# Quick jump n directories
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ..1='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'

# Repeat your last command as root
alias sulast='sudo $(history -p !-1)'

# Sniff GET and POST traffic over http
alias sniff="sudo ngrep -t '^(GET|POST) ' 'tcp and port 80'"

# Show which commands you use the most
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

# Show hidden files only
alias l.='ls -d .* --color=auto'

# Show active network listeners
alias netlisteners='lsof -i -P | grep LISTEN'

# Show lines that are not blank or commented out
alias active='grep -v -e "^$" -e"^ *#"'

# Extract most know archives with one command
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
