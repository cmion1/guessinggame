#!/usr/bin/env bash #guessinggame.sh #author : Christophe Mion
count=$(ls -1 | wc -l)
while [[ $count -gt 0 ]]; do
sleep 1 && clear && cat << "ART"
_____                     _               _____
|  __ \                   (_)             |  __ \
| |  \/_   _  ___  ___ ___ _ _ __   __ _  | |  \/ __ _ _ __ ___   ___
| | __| | | |/ _ \/ __/ __| | '_ \ / _` | | | __ / _` | '_ ` _ \ / _ \
| |_\ \ |_| |  __/\__ \__ \ | | | | (_| | | |_\ \ (_| | | | | | |  __/
\____/\__,_|\___||___/___/_|_| |_|\__, |  \____/\__,_|_| |_| |_|\___|
                                   __/ |
                                  |___/
ART
sleep 1 && echo "This is the current folder" && sleep 1 && pwd && sleep 1 && echo "How much files would you guess are in this folder ?"
read entry && sleep 2
if [[ $count -eq $entry ]]
then clear && sleep 2 && cat << "congrats"
_____                             _
/  __ \                           | |
| /  \/ ___  _ __   __ _ _ __ __ _| |_ ___
| |    / _ \| '_ \ / _` | '__/ _` | __/ __|
| \__/\ (_) | | | | (_| | | | (_| | |_\__ \
\____/\___/|_| |_|\__, |_|  \__,_|\__|___/
                   __/ |
                  |___/
congrats
sleep 2 && clear && exit
elif [[ $count -gt $entry ]]
then clear && sleep 1 && cat << "mo" && sleep 2
_   _       _         _____                        _
| \ | |     | |       |  ___|                      | |
|  \| | ___ | |_      | |__ _ __   ___  _   _  __ _| |__
| . ` |/ _ \| __|     |  __| '_ \ / _ \| | | |/ _` | '_ \
| |\  | (_) | |_      | |__| | | | (_) | |_| | (_| | | | |
\_| \_/\___/ \__|     \____/_| |_|\___/ \__,_|\__, |_| |_|
                                              __/ |
                                             |___/
mo
else clear && sleep 1 && cat << "lss" && sleep 2
  _____              ___  ___           _
 |_   _|             |  \/  |          | |
   | | ___   ___     | .  . |_   _  ___| |__
   | |/ _ \ / _ \    | |\/| | | | |/ __| '_ \
   | | (_) | (_) |   | |  | | |_| | (__| | | |
   \_/\___/ \___/    \_|  |_/\__,_|\___|_| |_|
lss
fi
done
