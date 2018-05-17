#!/bin/bash
# a script to recursively find and split MP3 files in ~/gPodder folder to the USB drive in /dev/sdd1
# Even works with files with $ or spaces
#
minutes=$(whiptail --title "DVD RIPPER" --inputbox "Enter title # to rip" 10 40 3>&1 1>&2 2>&3)
# next four lines are in case "cancel" is selected
exitstatus=$?
if [ $exitstatus != 0 ]; then
  exit $exitstatus
fi 
