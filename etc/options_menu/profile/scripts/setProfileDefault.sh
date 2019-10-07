#!/bin/sh
if [ -d /media/hakchi/profiles ]; then
  cp -f /var/lib/clover/profiles/0/StarFox-TheEnd.txt /media/hakchi/saves/
  cp -f /var/lib/clover/profiles/0/mcp-state /media/hakchi/saves/
  cp -f /var/lib/clover/profiles/0/dimming.txt /media/hakchi/saves/
  cp -af /var/lib/clover/profiles/0/home-menu /media/hakchi/saves/
  cp -af /var/lib/clover/profiles/0/hakchi /media/hakchi/saves/
  umount /var/lib/clover/profiles/0/
  mount /media/hakchi/saves/ /var/lib/clover/profiles/0/
  if [ -d /media/hakchi/retroarch/states ]; then
    umount /media/hakchi/retroarch/states/
  elif [ -d /media/data/ra_savestates ]; then
    umount /media/data/ra_savestates/
  fi
else
  mkdir /var/lib/clover/profiles/temp/
  cp -f /var/lib/clover/profiles/0/StarFox-TheEnd.txt /var/lib/clover/profiles/temp/
  cp -f /var/lib/clover/profiles/0/mcp-state /var/lib/clover/profiles/temp/
  cp -f /var/lib/clover/profiles/0/dimming.txt /var/lib/clover/profiles/temp/
  cp -af /var/lib/clover/profiles/0/home-menu /var/lib/clover/profiles/temp/
  cp -af /var/lib/clover/profiles/0/hakchi /var/lib/clover/profiles/temp/
  umount /var/lib/clover/profiles/0/
  cp -f /var/lib/clover/profiles/temp/StarFox-TheEnd.txt /var/lib/clover/profiles/0/
  cp -f /var/lib/clover/profiles/temp/mcp-state /var/lib/clover/profiles/0/
  cp -f /var/lib/clover/profiles/temp/dimming.txt /var/lib/clover/profiles/0/
  cp -af /var/lib/clover/profiles/temp/home-menu /var/lib/clover/profiles/0/
  cp -af /var/lib/clover/profiles/temp/hakchi /var/lib/clover/profiles/0/
  rm -r /var/lib/clover/profiles/temp/
fi
echo Using System Default Slot
