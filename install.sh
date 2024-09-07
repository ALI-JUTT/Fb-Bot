#!system/bin/sh

pkg update && pkg upgrade -y -y
pkg install root-repo -y
pkg install unstable-repo -y
pkg install x11-repo -y
pkg install python -y
termux-setup-storage
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python auto.py
