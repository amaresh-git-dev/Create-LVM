#!/bin/bash

echo ---------------------------------------------
echo We are here to help you to create your LV.
echo ---------------------------------------------

#taking input from user
read -p "Enter LV size: " lvsize
read -p "Enter your LV name: " lvname
read -p "Enter your VG:" vgname

#command to create LVM.
lvcreate -L $lvsize $lvname $vgname

echo ------------------------------------------
echo Your LVM successfully created.
echo ------------------------------------------

read -p "Want to see the LV details " opt
if [ $opt == yes ]
then
	lvdisplay
fi


