#                                        _                 _
#  __      ____ _  ___ _____   _____  __| | ___    _______| |__  _ __ ___
#  \ \ /\ / / _` |/ __/ _ \ \ / / _ \/ _` |/ _ \  |_  / __| '_ \| '__/ __|
#   \ V  V | (_| | (_|  __/\ V |  __| (_| | (_)    / /\__ | | | | | | (__
#    \_/\_/ \__,_|\___\___| \_/ \___|\__,_|\___/  /___|___|_| |_|_|  \___|

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Vim / Neovim stuff
export MYNVIMRC="${HOME}.config/nvim/init.vim"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME}" ] && printf %s "${HOME}.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

# Path
export PATH="${HOME}.rbenv/bin:${HOME}.rbenv/ruby-build/bin:${HOME}.yarn/bin:${HOME}.config/yarn/global/node_modules/.bin:/usr/local/go/bin:${HOME}.local/bin:/usr/bin/python3:/usr/local/sbin:/usr/bin/kotlinc:${PATH}"

ZSH=${HOME}.oh-my-zsh

# Useful plugins
source /home/*/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(gitfast common-aliases zsh-syntax-highlighting history-substring-search)

# Themes
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="agnoster"

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Prompt
prompt_dir() {
  prompt_segment blue black '%2/'
}

# Vim like shell controll
bindkey -v
export KEYTIMEOUT=1

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "${HOME}.aliases" ]] && source "${HOME}.aliases"

# Load Functions
[[ -f "${HOME}.zsh_functions" ]] && source "${HOME}.zsh_functions"

# Rails and Ruby Dev
type -a rbenv > /dev/null && eval "$(rbenv init -)"

export EDITOR=vim
export BUNDLER_EDITOR=vim

# Python dev
export WORKON_HOME=${HOME}.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT=${HOME}.local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source ${HOME}.local/bin/virtualenvwrapper.sh
#
# Kotlin dev
function ktolinr() {
  echo 'Compliling, pleae wait...'
  kotlinc $1 -include-runtime -d out.jar
  java -jar out.jar
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:

