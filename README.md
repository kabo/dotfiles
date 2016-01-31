# README

## To check out with submodules
```sh
cd ~
git clone https://github.com/kabo/dotfiles.git
git submodule init
git submodule update
```

## To update
```sh
cd ~/dotfiles/
git pull
git submodule update --remote
```

## To add submodules
```sh
cd ~/dotfiles/
git submodule add https://github.com/tpope/vim-sensible.git vim/bundle/vim-sensible
git commit -m "added submodule"
git push
```

