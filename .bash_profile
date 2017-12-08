if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# use pyenv instead of system python
if which pyenv > /dev/null;
  then eval "$(pyenv init -)";
fi

if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi
