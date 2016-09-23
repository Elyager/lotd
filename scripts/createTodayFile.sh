#!/bin/bash
_now=$(date +"%Y%m%d")
_postName="LOTD-$_now"
_file="$_postName.md"
cd $HOME/Documents/Hublab/lotd/content/
pwd
echo "Creating file $_file to save links of the day"
echo "## LOTD-$_now" > $_file
echo "File was created"
cd "$HOME/Documents/HubLab/blogdelyager/source/_posts"
pwd
echo "Creating post in blogdelyager"
hexo new post $_postName
echo "Post created!"
echo "Add lotd tag"
pwd
sed -e "4s/.*/tags: lotd/" $_file > "temp.md"
mv temp.md $_file