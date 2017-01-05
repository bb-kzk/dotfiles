### dotfiles settings
```
# git clone
$ cd
$ mkdir repository
$ cd repository
$ git clone https://github.com/breezebox/dotfiles

# symlik (bashrc, vimrc) 
$ cd
$ ln -s ~/repository/dotfiles/.bashrc ~/.bashrc
$ ln -s ~/repository/dotfiles/.vimrc ~/.vimrc

# activate
$ source ~/.bashrc
```

### vim settings
https://github.com/VundleVim/Vundle.vim
```
# vundle install 
$ cd
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim

# vim開いた状態で
$ :PluginInstall

# Done!になったら、:qでvimを抜ける
```

### perl install (plenv, perl_build, cpanm, cartion)
https://github.com/tokuhirom/plenv

http://qiita.com/uchiko/items/127b91001b45ad0312f0
```
$ git clone https://github.com/tokuhirom/plenv.git ~/.plenv
$ echo 'export PATH="$HOME/.plenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(plenv init -)"' >> ~/.bash_profile
$ exec $SHELL -l
省略

# cpanm
$ plenv install-cpanm

# carton
$ plenv exec cpanm Carton
```

### 


