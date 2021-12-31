# My macOS Build
## Download Link
- <a href="https://raw.githubusercontent.com/Florencea/my-macos-build/main/configs/ublock-advanced.txt" download>uBlock Origin Configuration</a>
## macOS Reset Steps

- For Intel

### 1. Backup Data and Sign Out all Services

- [What to do before you sell, give away, or trade in your Mac](https://support.apple.com/en-us/HT201065)
### 2. Start up from macOS Recovery

- [Start up from macOS Recovery](https://support.apple.com/en-us/HT201314#startup) <kbd>command</kbd> + <kbd>R</kbd>

- [Reset NVRAM or PRAM on your Mac](https://support.apple.com/en-us/HT204063) <kbd>command</kbd> + <kbd>option</kbd> + <kbd>P</kbd> + <kbd>R</kbd>
- [Start up from Network Recovery](https://support.apple.com/en-us/HT201314#internet) <kbd>command</kbd> + <kbd>option</kbd> + <kbd>R</kbd>
### 3. Reinstall macOS

- [Use Disk Utility to erase your Mac](https://support.apple.com/en-us/HT208496#erasedisk)
- [Reinstall macOS](https://support.apple.com/en-us/HT204904#reinstall)
### 4. Setup `System Preferences` app

- In `Security & Privacy -> Privacy -> Full Disk Access` add `Terminal` app and check it
### 5. Data Recovery from Backup

- Setup `Music` app
- Copy media to `Music` app
- Copy others to Home Directory

### 6. Install Apps from App Store

### 7. Execute `install.sh`

### 8. Setup Apps

### 9. Setup Development Environment

- Setup `Google Chrome` app
- Setup SSH Key
- Setup `Visual Studio Code` app

## macOS commands

### Generate SSH Key

```bash
ssh-keygen -t ed25519
```

```bash
cat .ssh/id_ed25519.pub | pbcopy
```
### Disable Window Pulse Animation

```bash
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO
```

### Disable Adobe Create Cloud Launch at Boot Up

```bash
sudo rm -f /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist
```

### Reset Launchpad App Icons

```bash
defaults write com.apple.dock ResetLaunchPad -bool true;killall Dock
```

