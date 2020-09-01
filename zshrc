ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="agnoster"
# ZSH_THEME="michelebologna"
# Useful plugins for Rails development with Sublime Text
plugins=(gitfast common-aliases zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)
bindkey -v
# powerline
# source '/usr/share/powerline/bindings/zsh/powerline.zsh' 

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export EDITOR=vim
export BUNDLER_EDITOR="atom $@ >/dev/null 2>&1 -a"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/usr/local/go/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function mkcd {
  command mkdir -p $1 && cd $1
}


prompt_dir () {
  prompt_segment blue black '%2/'
}

export MYVIMRC="$HOME/.vimrc"
