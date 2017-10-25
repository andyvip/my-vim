home_vimrc=$HOME/.vimrc
my_vimrc=$PWD/.vimrc

echo -e "set runtimepath+=$PWD/vim \nsource $PWD/vim/vimrc" > $my_vimrc
if [ `touch $home_vimrc && grep -wc "$my_vimrc" $home_vimrc` -eq 0 ]; then
    echo -e "source $my_vimrc" >> $home_vimrc
fi
