export TERM="screen-256color"
alias tmux="tmux -2"

alias skazka='cd /Users/$USER/Documents/projects/skazka && vagrant up && vagrant ssh'
alias skazka_suspend='cd /Users/$USER/Documents/projects/skazka && vagrant suspend'
alias minecraft='java -jar /Users/$USER/Applications/TLauncher.jar'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias indexingProject='ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags ./'

export ANDROID_HOME=/usr/local/opt/android-sdk

alias indexingProject="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags.vim \$(python -c \"import os, sys; iter_lib=' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)); print('{} {}'.format('./', iter_lib))\")"

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME="/Users/$USER/envs/"

setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate

alias vim='/usr/local/bin/nvim'
alias awk='/usr/local/bin/gawk'

alias dockAddSeparator="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'; killall Dock"
alias myip="ifconfig en0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

git config --global merge.conflictstyle diff3
