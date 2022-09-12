#!/usr/bin/env bash
#guessinggame.sh
#author : Christophe Mion

function guessinggame {
clear && cat << "ART"
_____                     _               _____
|  __ \                   (_)             |  __ \
| |  \/_   _  ___  ___ ___ _ _ __   __ _  | |  \/ __ _ _ __ ___   ___
| | __| | | |/ _ \/ __/ __| | '_ \ / _` | | | __ / _` | '_ ` _ \ / _ \
| |_\ \ |_| |  __/\__ \__ \ | | | | (_| | | |_\ \ (_| | | | | | |  __/
\____/\__,_|\___||___/___/_|_| |_|\__, |  \____/\__,_|_| |_| |_|\___|
                                   __/ |
                                  |___/
ART
echo "" && echo "Your current directory is : " && pwd && echo ""
count=$(ls | wc -l)
# prompting the user
echo "How much files would you guess are in this folder ?" && read entry
if [[ $count -eq $entry ]]
then clear && cat << "congrats"
_____                             _
/  __ \                           | |
| /  \/ ___  _ __   __ _ _ __ __ _| |_ ___
| |    / _ \| '_ \ / _` | '__/ _` | __/ __|
| \__/\ (_) | | | | (_| | | | (_| | |_\__ \
\____/\___/|_| |_|\__, |_|  \__,_|\__|___/
                   __/ |
                  |___/
congrats
  sleep 3 && clear
fi }
guessinggame
while [[ $count -ne $entry ]];
do clear && cat << "tryagain"
  _____             ___              _
  |_   _|           / _ \            (_)
   | |_ __ _   _  / /_\ \ __ _  __ _ _ _ __
   | | '__| | | | |  _  |/ _` |/ _` | | '_ \
   | | |  | |_| | | | | | (_| | (_| | | | | |
   \_/_|   \__, | \_| |_/\__, |\__,_|_|_| |_|
            __/ |         __/ |
           |___/         |___/
tryagain
sleep 3 && guessinggame
done
