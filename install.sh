# Update apt-get repositories & install git
sudo apt-get update
echo "Y" | sudo apt-get install git-core

# Install zsh and set it as standard shell
echo "Y" | sudo apt-get install zsh
chsh -s `which zsh`

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install diffuse with custom script
echo "Y" | sudo apt-get install diffuse
curl -o ~/.diffmodified.sh https://raw.githubusercontent.com/WGierke/.dotfiles/master/diffmodified.sh

# Alias
echo "alias dif='bash ~/.diffmodified.sh'" >> ~/.zshrc
echo "alias st='git status'" >> ~/.zshrc
echo "alias addA='git add -A'" >> ~/.zshrc
echo "alias com='git commit'" >> ~/.zshrc
echo "alias test='RAILS_ENV=test rake db:migrate && bundle exec rspec'" >> ~/.zshrc

# Install zsh syntax highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# Install zsh autosuggestions
git clone git://github.com/tarruda/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
