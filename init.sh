mkdir ~/goinfre/nvim
cd ~/goinfre
git clone https://github.com/AlDanial/cloc.git
curl -LO https://github.com/neovim/neovim/releases/download/v0.12.0/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage 
mv nvim-linux-x86_64.appimage neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cd ~
