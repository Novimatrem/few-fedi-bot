#!/bin/bash

cd "$(dirname "$0")"
clear
echo "Waiting for server to boot"
echo ""
echo "CLICK ON THE TEXT ENTRY BOX NOW!"
echo "(What's on your mind?)"
echo ""
echo "Usage: firefox must be open to https://diasporasocial.net/status_messages/new"
echo "and that diaspora window must be the FIRST TAB (accessible with Ctrl+1),"
echo "and you should click on the text box (What's on your mind?),"
echo "then it will work forever if you just leave it alone."
echo ""

#echo "CLICK ON THE TEXT ENTRY BOX NOW!"
sleep 15s


# it should be the only tab, and you should be switched to it

# sudo apt install -y xclip
# install xclip in your distro

# sudo apt install -y wmctrl
# install wmctrl in your distro

# sudo apt install -y xdotool
# install xdotool in your distro

rm -rf sentence.txt

clear
clear

function randword {
WORDFILE=/usr/share/dict/words
# seed random from pid
RANDOM=$$;
# using cat means wc outputs only a number, not number followed by filename
lines=$(cat $WORDFILE  | wc -l);
rnum=$((RANDOM*RANDOM%$lines+1));
sed -n "$rnum p" $WORDFILE;
}

printf %s "$(randword) " | tr [:upper:] [:lower:] | fold -w 80 >> sentence.txt
printf %s "futa" | tr [:upper:] [:lower:] | fold -w 80 >> sentence.txt
fold -w 80 -s sentence.txt
echo $(cat sentence.txt) | xclip
echo $(cat sentence.txt) | xclip -sel clip
echo ""
echo ""
sleep 2s
sleep 1s
wmctrl -a "Mozilla Firefox"
wmctrl -R "Mozilla Firefox"
sleep 1s
xdotool key Ctrl+1
#xdotool getactivewindow key Tab
sleep 1s
#xdotool key 1
sleep 1s
xdotool getactivewindow keyup shift
xdotool getactivewindow keyup ctrl
sleep 1s
xdotool keyup n
xdotool keyup shift
xdotool keyup Tab
xdotool keyup ctrl
xdotool key F5
sleep 1s
#xdotool keydown n
sleep 0.2s
xdotool keyup n
sleep 1s
xdotool key Tab
#echo "we in box now"
sleep 1s
xdotool getactivewindow key ctrl+a
sleep 1s
xdotool key BackSpace
sleep 1s
xdotool getactivewindow key ctrl+v
sleep 1s
xdotool keyup Ctrl
xdotool keyup Return
sleep 1s
xdotool key Ctrl+Return
sleep 1s
#xdotool key Tab
sleep 1s
xdotool key Tab
sleep 1s
xdotool key Tab
sleep 1s
xdotool key Tab
sleep 1s
xdotool key Return
sleep 1s

# resize the window so it is correct. hack
xdotool key Super+Right
sleep 1s
xdotool key Super+Up
sleep 1s
xdotool key Super+Right
sleep 1s
xdotool key Super+Left
sleep 1s
xdotool key Super+Left
sleep 1s
xdotool key Super+Left
sleep 1s

# NOW WE MANUALLY CLICK THE PUBLIC BUTTON WITH X,Y COORDS BECAUSE FUCK A11Y IG
# WHY DID THEY DO THIS
sleep 1s

# ensure the zoom is actually correct so the buttom is in the right coord
xdotool key Ctrl+0

sleep 1s
xdotool mousemove 500 440

sleep 1s

xdotool click 1


xdotool key Shift+Tab
sleep 1s
xdotool key Shift+Tab

#echo "send key"
xdotool key Return # send key
echo ""
#echo "WE JUST POSTED, NOW WE MUST RETURN TO THE POSTING PAGE."
echo ""
sleep 1s
xdotool key Tab
sleep 1s
xdotool key Tab
sleep 1s
xdotool key Tab
sleep 1s
xdotool key Tab
sleep 1s
xdotool key Return
sleep 1s
echo ""
echo "Usage: firefox must be open to https://diasporasocial.net/status_messages/new"
echo "and that diaspora window must be the FIRST TAB (accessible with Ctrl+1),"
echo "and you should click on the text box (What's on your mind?),"
echo "then it will work forever if you just leave it alone."
echo ""
echo "Waiting 4 hours before posting again..."
echo ""

# sleep 1 min for testing
sleep 60s

sleep 3600s
# 1 hour in seconds
sleep 3600s
# 1 hour in seconds
sleep 3600s
# 1 hour in seconds
sleep 3600s
# 1 hour in seconds


bash run.sh


