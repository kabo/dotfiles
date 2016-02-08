#!/bin/sh

files="vimrc vim gvimrc Xresources Xresources.d tmux.conf"
for file in $files; do
				echo "Symlinking ${file}..."
				ln -sf ~/dotfiles/${file} ~/.${file}
done
echo "Done!"

