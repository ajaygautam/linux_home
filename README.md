chsh -s /bin/zsh
Restart

Make sure $HOME is set
if /Users/agautam/.oh-my-zsh does not exist...
Make sure curl is available
    agautam@jarvis ~ $ which curl
    /usr/bin/curl
    agautam@jarvis ~ $ echo $?
    0
    agautam@jarvis ~ $ which curlx
    agautam@jarvis ~ $ echo $?
    1

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc


brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc


.zshrc =====
alias ll="ls -lh"

