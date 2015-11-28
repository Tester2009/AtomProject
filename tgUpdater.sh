: '
well, nothing interesting here. just small code for specific use.
sometime, you get bored when nothing todo. then this is how AtomProject is founded by me. myself.
--
@alepcat1710

this file will change the telegramdesktop.desktop inside ~/.local/share/applications
i just want my telegram get update automaticly.
thats all.
'
LOC=~/.local/share/applications
TG=telegramdesktop.desktop
BC=backup_telegramdesktop.dx

echo "Backup original "$TG". Renamed to: "$BC
cp $LOC/$TG $LOC/$BC
echo "Editing "$LOC/$TG

echo '[Desktop Entry]
Encoding=UTF-8
Version=1.0
Name=Telegram Desktop
Comment=Official desktop version of Telegram messaging app
Exec=/home/hakase/Downloads/Telegram/Updater -- %u
Icon=/home/hakase/.TelegramDesktop/tdata/icon.png
Terminal=false
StartupWMClass=Telegram
Type=Application
Categories=Network;
MimeType=application/x-xdg-protocol-tg;x-scheme-handler/tg;
X-Desktop-File-Install-Version=0.22' > $LOC/$TG
echo "completed !"
