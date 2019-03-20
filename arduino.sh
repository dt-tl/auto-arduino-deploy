#!/bin/bash

unset -v latest

latest=$(ls ./arduino/*.ino -tr|tail -1)

if [ -e $latest ]
then
  echo "found arduino file $latest. attempting to upload..."
  cd arduino
  su -c "make upload"
fi

exit 0