.PHONY: install python_pkgs pacman_pkgs nvim_config

install: nvim_config python_pkgs pacman_pkgs

python_pkgs: requirements.txt
	python3 -m pip install -U --user -r requirements.txt

pacman_pkgs: pkg_list.txt
	pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort pkg_list.txt))

# NeoVim Setup
~/.config/nvim:
	mkdir ~/.config/nvim

nvim_config: init.vim ~/.config/nvim
	cp init.vim ~/.config/nvim/
