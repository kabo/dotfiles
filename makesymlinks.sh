#!/bin/sh

files="vimrc vim"
for file in $files; do
				echo "Symlinking ${file}..."
				ln -sf ~/dotfiles/${file} ~/${file}
done
echo "Done!"

