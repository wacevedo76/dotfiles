# Aliases from Le Wagon dotfiles - aliases
# Get External IP / local IPs
alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"

# Quickly serve the current directory as HTTP
alias serve='ruby -run -e httpd . -p 8000'  # Or python -m SimpleHTTPServer :)

# Set up ssh connections
alias conhs01='ssh -p 50554 wacevedo@HS01'

# ls shortcuts

alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF1 --color=auto'

# Vim
alias v='vim $(fzf)'
