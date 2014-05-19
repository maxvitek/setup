DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm ~/.bash_profile
rm ~/.grcat
rm ~/.my.cnf
rm ~/.vimrc
rm -r ~/.vim

ln -s ${DIR}/.bash_profile ~/.bash_profile
ln -s ${DIR}/.grcat ~/.grcat
ln -s ${DIR}/.my.cnf ~/.my.cnf
ln -s ${DIR}/.vimrc ~/.vimrc
ln -s ${DIR}/.vim ~/.vim
