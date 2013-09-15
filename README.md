.vim
====

My vim configuration

Deployment
==========

To deploy this configuration on a new computer, follow these steps

1. Clone this repository : 
::
    git clone https://github.com/jgiovaresco/.vim.git

2. Create symbolic link :
::
    ln -s ~/.vim/.vimrc ~/.vimrc

3. Install vundle
::
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

4. Install plugins (ignore potential error messages at the first start)
::
    vim +BundleInstall +qall
