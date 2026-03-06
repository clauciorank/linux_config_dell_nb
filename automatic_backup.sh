cp -r ~/.config/i3 .
cp -r ~/.config/i3status .
cp -r ~/.config/rofi .

git add .
git commit -m 'backup'

git push
