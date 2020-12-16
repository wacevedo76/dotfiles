#                                        _                 _
#  __      ____ _  ___ _____   _____  __| | ___    _______| |__  _ __ ___
#  \ \ /\ / / _` |/ __/ _ \ \ / / _ \/ _` |/ _ \  |_  / __| '_ \| '__/ __|
#   \ V  V | (_| | (_|  __/\ V |  __| (_| | (_)    / /\__ | | | | | | (__
#    \_/\_/ \__,_|\___\___| \_/ \___|\__,_|\___/  /___|___|_| |_|_|  \___|


ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="agnoster"
# ZSH_THEME="michelebologna"
# Useful plugins for Rails development with Sublime Text
source /home/*/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(gitfast common-aliases zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)
bindkey -v

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Load Functions
[[ -f "./zsh_functions" ]] && source "./zsh_functions"

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin:${PATH}"


# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export EDITOR=vim
export BUNDLER_EDITOR="atom $@ >/dev/null 2>&1 -a"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/usr/local/go/bin:$HOME/.local/bin:/usr/bin/python3:${PATH}"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function mkcd {
  command mkdir -p $1 && cd $1
}

prompt_dir () {
  prompt_segment blue black '%2/'
}

export MYVIMRC="$HOME/.vim/vimrc"
export MYNVIMRC="$HOME/.config/nvim/init.vim"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

function countdown(){
   date1=$((`date +%s` + $1 * 60)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}
