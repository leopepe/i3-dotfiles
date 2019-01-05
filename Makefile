.PHONY: all

all: requirements copy-dotfiles

requirements:
	pacman -S alsa-utils lm_sensors powerline-fonts speedtest-cli alsa-utils ttf-font-awesome-4 polybar compton
	mkdir -p $(HOME)/.config/i3
	mkdir -p $(HOME)/.config/polybar

copy-dotfiles: copy-polybar-config copy-compton-config copy-i3-config

copy-polybar-config:
	cp polybar/config $(HOME)/.config/polybar/

copy-i3-config:
	cp i3/config $(HOME)/.config/i3/

copy-compton-config:
	cp compton/compton.conf $(HOME)/.config/compton
