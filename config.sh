prj_dir=$PWD/vim
vim_dir=$HOME/.andyvim

rm -rf $vim_dir

if cp -R $prj_dir/. $vim_dir
then
	echo "config $vim_dir ok"
else
	echo "config $vim_dir failed"
	exit 1
fi


vim_vimrc=$HOME/.vimrc
append_to_vim_vimrc_0="set runtimepath+=$vim_dir"
append_to_vim_vimrc_1="source $vim_dir/vimrc"
config_vimrc_result=0
is_exist_0=0
is_exist_1=0

if [ -f $vim_vimrc ]
then
	is_exist_0=`grep -wc "$append_to_vim_vimrc_0" $vim_vimrc`
	is_exist_1=`grep -wc "$append_to_vim_vimrc_1" $vim_vimrc`
fi

if [ $is_exist_0 -eq 0 ]
then
	echo $append_to_vim_vimrc_0 >> $vim_vimrc
	config_vimrc_result=$?
fi

if [ $is_exist_1 -eq 0 ]
then
	echo $append_to_vim_vimrc_1 >> $vim_vimrc
	config_vimrc_result=$?
fi

if [ $config_vimrc_result -eq 0 ]
then
	echo "config $vim_vimrc ok"
else
	echo "config $vim_vimrc failed"
	exit 1
fi

echo "config completed"