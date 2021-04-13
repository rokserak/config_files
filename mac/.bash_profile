PS1=' \[\033[01;31m\]\W 🍔\[\033[00m\] '

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -Al'
alias cd..='cd ..'
alias grep='grep --color=auto'

source /usr/local/etc/profile.d/bash_completion.sh
source /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
source /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

alias viplug='vim +PlugInstall +qall'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
