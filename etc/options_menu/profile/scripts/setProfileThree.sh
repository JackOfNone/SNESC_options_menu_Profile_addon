#!/bin/sh
if [ -d /media/hakchi/profiles ]; then
  cp /var/lib/clover/profiles/0/StarFox-TheEnd.txt /media/hakchi/profiles/3/saves/
  cp /var/lib/clover/profiles/0/mcp-state /media/hakchi/profiles/3/saves/
  cp /var/lib/clover/profiles/0/dimming.txt /media/hakchi/profiles/3/saves/
  cp -af /var/lib/clover/profiles/0/home-menu /media/hakchi/profiles/3/saves/
  cp -af /var/lib/clover/profiles/0/hakchi /media/hakchi/profiles/3/saves/
  umount /var/lib/clover/profiles/0/
  mount /media/hakchi/profiles/3/saves/ /var/lib/clover/profiles/0/
  if [ -d /media/hakchi/retroarch/states ]; then
    umount /media/hakchi/retroarch/states/
    mount /media/hakchi/profiles/3/retroarch_states/ /media/hakchi/retroarch/states/
  elif [ -d /media/data/ra_savestates ]; then
    umount /media/data/ra_savestates/
    mount /media/hakchi/profiles/3/retroarch_states/ /media/data/ra_savestates/
  fi
else
  cp -f /var/lib/clover/profiles/0/StarFox-TheEnd.txt /var/lib/clover/profiles/3/
  cp -f /var/lib/clover/profiles/0/mcp-state /var/lib/clover/profiles/3/
  cp -f /var/lib/clover/profiles/0/dimming.txt /var/lib/clover/profiles/3/
  cp -af /var/lib/clover/profiles/0/home-menu /var/lib/clover/profiles/3/
  cp -af /var/lib/clover/profiles/0/hakchi /var/lib/clover/profiles/3/
  umount /var/lib/clover/profiles/0/
  mount /var/lib/clover/profiles/3/ /var/lib/clover/profiles/0/
fi
echo Using Profile Slot 3
