#!/usr/local/bin/zsh
source $HOME/.zshrc
cd $HOME/Documents/HubLab/lotd
git add .
git commit -m "Today News Updated! 👊"
git push
echo "Today News updated in lotd repo"
