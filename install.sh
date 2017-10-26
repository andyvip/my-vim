home_vimrc=$HOME/.vimrc
my_vimrc=$PWD/.vimrc

echo "set runtimepath+=$PWD/vim \nsource $PWD/vim/vimrc" > $my_vimrc
if [ `touch $home_vimrc && grep -wc "$my_vimrc" $home_vimrc` -eq 0 ]; then
    echo "source $my_vimrc" >> $home_vimrc
fi
