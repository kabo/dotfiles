#!/bin/bash - 
#===============================================================================
#
#          FILE: installfont.sh
# 
#         USAGE: ./installfont.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/22/2016 20:45
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

fontsdir=$(find /usr/share/fonts -name dejavu -type d)
if [ "x$fontsdir" == "x" ]; then
  echo 'Failed to find fonts dir.'
  exit 1
fi
sudo cp ./DejaVuSansMonoForPowerline.ttf "${fontsdir}/DejaVuSansMonoForPowerline.ttf"
echo 'Font installed!'

