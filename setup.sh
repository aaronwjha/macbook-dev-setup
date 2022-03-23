#
# setup-laptop.sh
# a bash script for setting up a fresh latpop with all my dev tools and setting
# @Copyright 2020 - Aaron Watson
#

#start by installing xcode tools
xcode-select --install

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/awatson/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#start installing the goodness
brew install --cask iterm2
# brew install git # this should be installed with xcode tools
brew install --cask visual-studio-code
brew install --cask dotnet-sdk
brew install --cask postman
brew install --cask docker
brew install --cask google-cloud-sdk
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
brew install azure-cli
brew install kubernetes-cli
brew install istioctl
brew install helm
brew install jq
brew install k9s

#test these
brew install --cask amethyst
brew install kubie
brew install fzf
/opt/homebrew/opt/fzf/install --all
brew install stern
brew install kustomize
brew install terraform
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install --cask qlmarkdown

#add our vscode extensions
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode.azurecli
code --install-extension akamud.vscode-theme-onedark
code --install-extension ms-dotnettools.csharp
code --install-extension yzhang.markdown-all-in-one
code --install-extension hashicorp.terraform

