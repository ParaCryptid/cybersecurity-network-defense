
#!/bin/bash
APP_NAME="cyberdefense"
VERSION="1.0"
DEB_DIR="./deb_build"
mkdir -p $DEB_DIR/DEBIAN
mkdir -p $DEB_DIR/usr/local/bin

echo "Package: $APP_NAME
Version: $VERSION
Section: base
Priority: optional
Architecture: all
Depends: python3, python3-pip
Maintainer: ParaCryptid
Description: Operational Cybersecurity Defense Tool
" > $DEB_DIR/DEBIAN/control

cp main.py $DEB_DIR/usr/local/bin/$APP_NAME
chmod +x $DEB_DIR/usr/local/bin/$APP_NAME

dpkg-deb --build $DEB_DIR ${APP_NAME}_${VERSION}.deb
