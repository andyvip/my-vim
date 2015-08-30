home_vimrc=$HOME/.vimrc
extra_vimrc=$PWD/.vimrc

echo -e "set runtimepath+=$PWD/vim \nsource $PWD/vim/vimrc" > $extra_vimrc
if [ `touch $home_vimrc && grep -wc "$extra_vimrc" $home_vimrc` -eq 0 ]; then
    echo -e "source $extra_vimrc" >> $home_vimrc
fi
