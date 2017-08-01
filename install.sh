sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
exit
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k


rm ~/.zshrc

ln -s ~/Documents/Git/dotfiles/vim/vim ~/.vim
ln -s ~/Documents/Git/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/Documents/Git/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/Documents/Git/dotfiles/fonts ~/.fonts



