#!/bin/bash

set -e

git pull
git clean -dxf

npm i
npm run build

if [ ! -e /tmp/oldroot ]; then
  git clone .git /tmp/oldroot
  git -C /tmp/oldroot checkout oldversion
  rm -rf /tmp/oldroot/.* || /bin/true
fi

d=$(readlink -f dist)
for f in $(find /tmp/oldroot -type f); do
  f2=${f/"/tmp/oldroot"/"$d"}
  if [ ! -e "$f2" ]; then
    mkdir -p "$(dirname $f2)"
    cp -v "$f" "$f2"
  fi
done

rm -rf /var/www/mercode.org
mv dist /var/www/mercode.org

