Ubuntu supports Alias definitions.
You may want to put all your additions into a separate file like
~/.bash_aliases, instead of adding them here directly to ~/.bashrc or ~/.profile

# See /usr/share/doc/bash-doc/examples in the bash-doc package.
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

So main idea is to create symlink and link this file to ~/.bash_aliases
http://www.cyberciti.biz/faq/creating-soft-link-or-symbolic-link/

cd ~
ln -s %path_to_project%/bash/.bash_aliases .bash_aliases
