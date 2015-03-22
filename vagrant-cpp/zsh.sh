##
# ZSH (https://github.com/dstendardi/vagrant-dev/blob/master/provision.sh)
#
#   Run this script to install ZSH customized with OH-MY-ZSH.
#   This will make your life awesome (assuming it doesn't break anything O_O).
#
##

apt-get update

# Install zsh
apt-get install -y zsh

# Clone oh-my-zsh
if [ ! -d ~vagrant/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~vagrant/.oh-my-zsh
fi

# Create a new zsh configuration from the provided template
cp ~vagrant/.oh-my-zsh/templates/zshrc.zsh-template ~vagrant/.zshrc

# Change ownership of .zshrc
chown vagrant: ~vagrant/.zshrc

# Customize theme
sed -i -e 's/ZSH_THEME=".*"/ZSH_THEME="philips"/' ~vagrant/.zshrc

# add aliases
sed -i -e 's/# Example aliases/source ~\/.bash_aliases/gi' ~vagrant/.zshrc

# Set zsh as default shell
chsh -s /bin/zsh vagrant
