
echo "=> Removing old config"
rm -rf ~/.config/nvim_old

echo "=> Backing Up"
cp ~/.config/nvim ~/.config/nvim_old

echo "=> Moving files"
cp -Rv nvim/*.vim ~/.config/nvim/
cp -Rv nvim/plug_config/ ~/.config/nvim/plug_config/
cp -Rv nvim/lua/ ~/.config/nvim/lua/
cp -Rv .ideavimrc ~/.ideavimrc

echo "DONE"
