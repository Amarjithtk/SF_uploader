#!/bin/bash
printf "   _____ ______   __  ______  __   ____  ___    ____  __________   ___   ____  _   _ _    _   ____       _____     _____  \n"
printf "  / ___// ____/  / / / / __ \/ /  / __ \/   |  / __ \/ ____/ __ \  | _ \ |_ _|  \ \/ / \ \ /  / / __   /  ___  \  /  ___/  \n"
printf "  \__ \/ /_     / / / / /_/ / /  / / / / /| | / / / / __/ / /_/ /  |  _/  | |   >  <   \ V /  \__  \  | /   \   |  \ __  \  \n"
printf " ___/ / __/    / /_/ / ____/ /__/ /_/ / ___ |/ /_/ / /___/ _, _/   |_|    | |  /_/\_\   |_|   |___ /   \ /   \ /   __/  /   \n"
printf "/____/_/       \____/_/   /_____\____/_/  |_/_____/_____/_/ |_|    |_|    |_| / /   \ \ | |  |___ /     \_____/    |____/     \n"

printf "Enter Your Source Forge ID : "
read USER
printf "\nEnter Your Device Codename : "
read DEVICE
haste() { a=$(cat); curl -X POST -s -d "$a" https://del.dog/documents | awk -F '"' '{print "https://del.dog/"$4}'; }
HOST=frs.sourceforge.net
DIR=/home/frs/project/pixys-os/pie/$DEVICE
OUT=/out/target/product/$DEVICE
ROM=PixysOS*.zip

printf "\nUploading.......\n"

cd $OUT/$DEVICE
sftp $USER@$HOST <<EOF
cd $DIR
put $ROM
LINK=https://sourceforge.net/projects/pixys-os/files/pie/$DEVICE/$ROM/download
echo $LINK > url.txt && haste url.txt && rm url.txt
EOF
