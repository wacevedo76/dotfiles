#                                        _                 _
#  __      ____ _  ___ _____   _____  __| | ___    _______| |__  _ __ ___
#  \ \ /\ / / _` |/ __/ _ \ \ / / _ \/ _` |/ _ \  |_  / __| '_ \| '__/ __|
#   \ V  V | (_| | (_|  __/\ V |  __| (_| | (_)    / /\__ | | | | | | (__
#    \_/\_/ \__,_|\___\___| \_/ \___|\__,_|\___/  /___|___|_| |_|_|  \___|

HOME=/home/wacevedo

ZSH=${HOME}/.oh-my-zsh

# Themes
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="agnoster"
# ZSH_THEME="michelebologna"

# Prompt

prompt_dir() {
  prompt_segment blue black '%2/'
}

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Useful plugins
source /home/*/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(gitfast common-aliases zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Vim like shell controll
bindkey -v
export KEYTIMEOUT=1

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "${HOME}/.aliases" ]] && source "${HOME}/.aliases"

# Load Functions
[[ -f "${HOME}/.zsh_functions" ]] && source "${HOME}/.zsh_functions"

# Path
export PATH="/usr/local/lib/nodejs/node-v14.17.3-linux-x64/bin:${HOME}/.rbenv/bin:${HOME}/.rbenv/ruby-build/bin:${HOME}/.yarn/bin:${HOME}/.config/yarn/global/node_modules/.bin:/usr/local/go/bin:${HOME}/.local/bin:/usr/bin/python3:/usr/local/sbin:/usr/bin/kotlinc:${PATH}"


# Rails and Ruby Dev
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export EDITOR=vim
export BUNDLER_EDITOR="atom $@ >/dev/null 2>&1 -a"

# Python dev
source virtualenvwrapper.sh

# Kotlin dev
function ktolinr() {
  echo 'Compliling, pleae wait...'
  kotlinc $1 -include-runtime -d out.jar
  java -jar out.jar
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



# Vim / Neovim stuff
export MYVIMRC="${HOME}/.vim/vimrc"
export MYNVIMRC="${HOME}/.config/nvim/init.vim"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
