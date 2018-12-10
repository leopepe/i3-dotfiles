.PHONY: all

all: install-req copy-dotfiles

install-req:
	pacman -S alsa-utils lm_sensors powerline-fonts speedtest-cli alsa-utils ttf-font-awesome-4
	aurman -S i3status-rust-git

copy-dotfiles:
	mkdir -p $(HOME)/.config/i3
	cp config status.toml $(HOME)/.config/i3/
