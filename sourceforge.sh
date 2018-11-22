#!/bin/bash
printf "   _____ ______   __  ______  __   ____  ___    ____  __________   ___   ____  _   _ _    _   ____       _____     _____  \n"
printf "  / ___// ____/  / / / / __ \/ /  / __ \/   |  / __ \/ ____/ __ \  | _ \ |_ _|  \ \/ / \ \ /  / / __   /  ___  \  /  ___/  \n"
printf "  \__ \/ /_     / / / / /_/ / /  / / / / /| | / / / / __/ / /_/ /  |  _/  | |   >  <   \ V /  \__  \  | /   \   |  \ __  \  \n"
printf " ___/ / __/    / /_/ / ____/ /__/ /_/ / ___ |/ /_/ / /___/ _, _/   |_|    | |  /_/\_\   |_|   |___ /   \ /   \ /   __/  /   \n"
printf "/____/_/       \____/_/   /_____\____/_/  |_/_____/_____/_/ |_|    |_|    |_| / /   \ \ | |  |___ /     \_____/    |____/     \n"

printf " \n Enter Your Source Forge ID : "
read USER
printf "\n Enter Your Device Codename : "
read DEVICE

printf " \n is this PixysOS : "
read boolean


if boolean=no
then
  printf " \n Enter rom name ? : "
  read soft
fi

if boolean=yes
then
  DIR=/home/frs/project/pixys-os/pie/$DEVICE
  OUT=/out/target/product/$DEVICE
  ROM=PixysOS*.zip
  cd $OUT
  sftp $USER@frs.sourceforge.net
  cd $DIR
  put $ROM

else
  DIR=/home/frs/project/personal-projects/files/Dev
  ROM=$soft*.zip

fi
haste() { a=$(cat); curl -X POST -s -d "$a" https://del.dog/documents | awk -F '"' '{print "https://del.dog/"$4}'; }


printf "\nUploading.......\n"

EOF
