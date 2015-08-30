home_vimrc=$HOME/.vimrc
extra_vimrc="source $PWD/vim/vimrc"
touch $home_vimrc
if [ `grep -wc "$extra_vimrc" $home_vimrc` -eq 0 ]; then
    echo $extra_vimrc >> $home_vimrc
fi
