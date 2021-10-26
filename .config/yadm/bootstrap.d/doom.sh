rm -rf $HOME/.config/nvim
rm -rf $HOME/.local/share/nvim
git clone --depth 1 https://github.com/NTBBloodbath/doom-nvim.git ${XDG_CONFIG_HOME:-$HOME/.config}/nvim

