#!/bin/bash
unset WINEPREFIX

if [ ! -d "$HOME"/.generally ] ; then
    mkdir "$HOME"/.generally || exit 1
    mkdir "$HOME"/.generally/Sounds || exit 1

    ln -s -T /usr/share/generally/Lang "$HOME"/.generally/Lang || exit 1
    ln -s -T /usr/share/generally/Sounds/Default \
        "$HOME"/.generally/Sounds/Default || exit 1
    ln -s -T /usr/share/generally/Sounds/Funny \
        "$HOME"/.generally/Sounds/Funny || exit 1
    ln -s /usr/share/generally/GeneRally.exe \
        "$HOME"/.generally/GeneRally || exit 1
    ln -s /usr/share/generally/TrackEditor.exe \
        "$HOME"/.generally/TrackEditor || exit 1
    ln -s /usr/share/generally/font.bmp "$HOME"/.generally/font.bmp || exit 1
    ln -s /usr/share/generally/readme.txt \
        "$HOME"/.generally/readme.txt || exit 1
    ln -s /usr/share/generally/trackeditor.cur \
        "$HOME"/.generally/trackeditor.cur || exit 1
    ln -s /usr/share/generally/version.txt \
        "$HOME"/.generally/version.txt || exit 1

    cp -ra /usr/share/generally/Drivers "$HOME"/.generally || exit 1
    cp -ra /usr/share/generally/Tracks "$HOME"/.generally || exit 1
    cp -ra /usr/share/generally/Cars "$HOME"/.generally || exit 1
    cp /usr/share/generally/gr.pal "$HOME"/.generally || exit 1
    cp /usr/share/generally/gr.ini "$HOME"/.generally || exit 1
fi

cd "$HOME"/.generally
echo Starting...
wine ./GeneRally $* &>/dev/null
xrefresh
cd - &>/dev/null
echo Goodbye from GeneRally!

exit 0

