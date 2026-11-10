#!/bin/sh
# Builds dist/Flash Cards.dmg. Needs: pip install pyinstaller -r requirements.txt
set -e
cd "$(dirname "$0")"
NAME="Flash Cards"
pyinstaller --noconfirm --windowed --name "$NAME" --osx-bundle-identifier "io.github.kunal-dangi.flash-cards" --add-data "data:data" --add-data "images:images" main.py
mkdir -p build/dmg && ln -sfh /Applications build/dmg/Applications
ditto "dist/$NAME.app" "build/dmg/$NAME.app"
hdiutil create -volname "$NAME" -srcfolder build/dmg -ov -format UDZO "dist/$NAME.dmg"
