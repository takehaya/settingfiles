
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export PATH=$PATH:/bin
export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

echo -e ‘’

export PATH=$PATH:/Users/takeruhayasaka/.local/bin

if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
    alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim'
    alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim'
fi
export PATH="${HOME}/.scalaenv/bin:${PATH}"
eval "$(scalaenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias ls='ls -G'
