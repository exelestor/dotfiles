# Installation

### TL;DR
```
sudo apt install zsh && \
cd && \
git clone https://github.com/exelestor/cli_hack.git && \
mv .zshrc ~ && \
chsh -s $(which zsh)
```

### Step-by-step

###### Install zsh

```
sudo apt install zsh
```

###### Clone rep and move .zshrc to /home/user/
```
cd && \
git clone https://github.com/exelestor/cli_hack.git && \
mv .zshrc ~
```

###### Make zsh as login shell
```
chsh -s $(which zsh)
```
