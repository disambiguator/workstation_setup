# Set up aliases
cd ~
ln -s workstation_setup/.zshrc .zshrc
ln -s workstation_setup/.gitconfig .gitconfig

cd -
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew dependencies
brew bundle --no-lock

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# NVM stuff gets added to .zprofile