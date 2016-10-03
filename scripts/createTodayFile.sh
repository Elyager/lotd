#!/usr/local/bin/zsh
source $HOME/.zshrc
cd $HOME/Documents/Hublab/lotd/content/
pwd
echo "Creating file $TODAY_POST_NAME.md to save links of the day"
echo "## $TODAY_POST_NAME" > $TODAY_POST_FILENAME
echo "File was created"
cd $HOME/Documents/HubLab/blogdelyager/source/_posts
pwd
echo "Creating post in blogdelyager"
hexo new post $_postName
echo "Post created!"
echo "Add lotd tag"
pwd
sed -e "4s/.*/tags: lotd/" $TODAY_POST_FILENAME > "temp.md"
mv temp.md $TODAY_POST_FILENAME