.PHONY: install install_sudo python_pkgs pacman_pkgs nvim_config

install: nvim_config python_pkgs

install_sudo: pacman_pkgs

python_pkgs: requirements.txt
	python3 -m pip install -U --user -r requirements.txt

pacman_pkgs: pkg_list.txt
	pacman -S --needed - < pkg_list.txt

# NeoVim Setup
~/.config/nvim:
	mkdir ~/.config/nvim

nvim_config: init.vim ~/.config/nvim
	cp init.vim ~/.config/nvim/
