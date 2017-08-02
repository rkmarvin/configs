alias skazka='cd /Users/$USER/Documents/projects/skazka && vagrant up && vagrant ssh'
alias skazka_suspend='cd /Users/$USER/Documents/projects/skazka && vagrant suspend'
alias minecraft='java -jar /Users/$USER/Applications/TLauncher.jar'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias indexingProject='ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags ./'

export ANDROID_HOME=/usr/local/opt/android-sdk

alias indexingProject="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags \$(python -c \"import os, sys; iter_lib=' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)); print '{} {}'.format('./', iter_lib)\")"

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME="/Users/$USER/envs/"

setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate

alias vim='/usr/local/bin/vim'
