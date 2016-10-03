#!/usr/local/bin/zsh
source $HOME/.zshrc
_now=$(date +"%Y%m%d")
_postName="LOTD-$_now"
_file="$_postName.md"
cd $HOME/Documents/HubLab/lotd
git add .
git commit -m "Today News Updated! 👊"
git push
echo "Today News updated in lotd repo"
echo "Publish post in blogdelyager"
cd $HOME/Documents/HubLab/blogdelyager/source/_posts
pwd
[ -f $_file ] && echo "File $_file found" || echo "File $_file Not found" >&2 && exit 1
head -n 5 $_file > headers_temp.md
tail -n +2 $HOME/Documents/HubLab/lotd/content/$_file > content_temp.md
cat headers_temp.md content_temp.md > $_file
_time=$(date +%H:%M:%S)
echo " \n" >> $_file
echo "Última actualización: **$_time**" >> $_file
rm headers_temp.md content_temp.md
git add .
git commit -m "Add $_postName"
git push
hexo generate --deploy