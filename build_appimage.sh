
#!/bin/bash
APP=cyberdefense
VERSION=1.0.0
mkdir -p AppDir/usr/bin
cp main.py AppDir/usr/bin/$APP
chmod +x AppDir/usr/bin/$APP

echo -e "[Desktop Entry]\nName=CyberDefense\nExec=$APP\nIcon=terminal\nType=Application\nCategories=Utility;" > AppDir/$APP.desktop

wget -N https://github.com/AppImage/AppImageKit/releases/latest/download/appimagetool-x86_64.AppImage
chmod +x appimagetool-x86_64.AppImage
./appimagetool-x86_64.AppImage AppDir
