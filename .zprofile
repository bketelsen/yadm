
if [[ -a /opt/homebrew/bin ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi




if [[ -a /home/linuxbrew/.linuxbrew ]]; then
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
