#!/bin/bash - 
#===============================================================================
#
#          FILE: generatetmuxpowerline.sh
# 
#         USAGE: ./generatetmuxpowerline.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/22/2016 20:56
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cp ./mytheme.sh ./tmux-powerline/themes/mytheme.sh
cd ./tmux-powerline || exit
./generate_rc.sh
cd ~ || exit
mv .tmux-powerline{.default,}
sed 's/TMUX_POWERLINE_THEME="[^"]*"/TMUX_POWERLINE_THEME="mytheme"/' .tmux-powerlinerc -i

