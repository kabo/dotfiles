#!/bin/sh

files="vimrc vim gvimrc"
for file in $files; do
				echo "Symlinking ${file}..."
				ln -sf ~/dotfiles/${file} ~/.${file}
done
echo "Done!"

