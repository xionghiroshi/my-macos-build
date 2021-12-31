#! /bin/bash
function print_step() {
  printf "\E[1;36m"
  printf "\n + %s\n\n" "$1"
  printf "\E[0m"
}

github_username="xionghiroshi"
github_email="bearshiba@gmail.com"
github_editor="nano"

print_step "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

print_step "brew install istat menus"
brew install istat-menus
printf "\E[0;31m"
printf "982092332@qq.com\n"
printf "GAWAE-FCWQ3-P8NYB-C7GF7-NEDRT-Q5DTB-MFZG6-6NEQC-CRMUD-8MZ2K-66SRB-SU8EW-EDLZ9-TGH3S-8SGA\n"
printf "\E[0m"

print_step "brew install cask fonts essential"
brew install --cask font-jetbrains-mono
brew install --cask font-inter
brew install --cask font-new-york

print_step "brew install fish"
brew install fish
echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
mkdir -p ~/.config/fish
{
  printf "set -g -x PATH /usr/local/bin \$PATH\n"
  printf "set -g fish_user_paths /usr/local/sbin \$fish_user_paths\n"
  printf "set -g -x fish_greeting\n"
  
} >>~/.config/fish/config.fish

print_step "brew install cask apps"
brew install --cask google-chrome
brew install --cask iina
brew install --cask keka
brew install --cask kekaexternalhelper
brew install --cask c0re100-qbittorrent
brew install --cask scroll-reverser

print_step "brew install commend line tools"
brew install annie
brew install ffmpeg
brew install git
brew install git-lfs
brew install gnupg
brew install id3v2
brew install jq
brew install micro
brew install megatools
brew install mtr
brew install nano
brew install rsync
brew install python3
brew install wget
brew install youtube-dl

print_step "git configuations"
(
  set -x
  git config --global user.name "$github_username"
  git config --global user.email "$github_email"
  git config --global core.editor "$github_editor"
  git config --global init.defaultBranch main
  git config --global pull.rebase false
)

print_step "disable eyecandy, reset launchpad & clear scripts"
(
  set -x
  defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO
  defaults write com.apple.dock ResetLaunchPad -bool true
  killall Dock
  rm "$0"
)
