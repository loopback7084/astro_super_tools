#!/bin/bash

#filelist=$( find ./system ./vendor ./product -type f | xargs -I{} grep -al "baidu.com" "{}" )

#for f in $filelist
#do
#	echo "BAIDU Processing File: ${f}"
#done


rm -rf ./system/system/app/agenda
rm -rf ./system/system/app/airmail
#rm -rf ./system/system/app/ApplicationBar
rm -rf ./system/system/app/BasicDreams
rm -rf ./system/system/app/data
rm -rf ./system/system/app/LiveWallpapersPicker
rm -rf ./system/system/app/notes
#rm -rf ./system/system/app/PrintSpooler
rm -rf ./system/system/app/sync
rm -rf ./system/system/app/vivaldi
rm -rf ./system/system/app/voiceassist
rm -rf ./system/system/app/onesearch
rm -rf ./system/system/app/Protips
rm -rf ./system/system/priv-app/EngineerCode
rm -rf ./system/system/priv-app/EngineerMode


rm -rf ./system/system/priv-app/CallRecorderService
rm -rf ./system/system/priv-app/CellBroadcastLegacyApp
rm -rf ./system/system/priv-app/DocumentsUI
rm -rf ./system/system/priv-app/MusicFX
rm -rf ./system/system/priv-app/PlanetBackup
rm -rf ./system/system/priv-app/PlanetUpdater
#rm -rf ./system/system/priv-app/ProxyHandler
#rm -rf ./system/system/priv-app/Shell
#rm -rf ./system/system/priv-app/SoundPicker
#rm -rf ./system/system/priv-app/Tag
#rm -rf ./system/system/priv-app/SystemUpdate
#rm -rf ./system/system/priv-app/SystemUpdateAssistant

rm -rf ./system/system/system_ext/priv-app/FMRadio

rm -rf ./product/app/CalendarGoogle
rm -rf ./product/app/Chrome
rm -rf ./product/app/Drive
rm -rf ./product/app/Duo
rm -rf ./product/app/Gmail2
rm -rf ./product/app/Maps
rm -rf ./product/app/Photos
rm -rf ./product/app/SpeechServicesByGoogle
rm -rf ./product/app/TrichromeLibrary
rm -rf ./product/app/Videos
rm -rf ./product/app/YouTube
rm -rf ./product/app/YTMusic

rm -rf ./product/priv-app/AndroidAutoStub
rm -rf ./product/priv-app/AssistantShell
rm -rf ./product/priv-app/FilesGoogle
rm -rf ./product/priv-app/Velvet
rm -rf ./product/priv-app/Wellbeing

rm -rf ./system/system/app/Fota
rm -f ./product/app/WebViewGoogle/oat/arm/WebViewGoogle*
rm -rf ./product/app/WebViewGoogle/

#mkdir -p ./system/system/app/webview ./system/system/app/leanlaunch ./system/system/app/opera
#chmod 0755 ./system/system/app/*

#cp ./streamlined/webview_astro.apk ./system/system/app/webview/
#cp ./streamlined/leanlaunch_astro.apk ./system/system/app/leanlaunch/
#cp ./streamlined/opera_astro.apk ./system/system/app/opera/
#chmod 0644 ./system/system/app/*/*.apk


rm -rf ./system/system/system_ext/priv-app/MtkLauncher3QuickStep
rm -rf ./system/system/priv-app/DocumentsUI/DocumentsUI.apk
rm -rf ./system/system/system_ext/app/MtkGallery2
rm -rf ./system/system/system_ext/app/MtkWallpaperPicker

rm -rf ./system/system/apex/com.google.android.cellbroadcast.apex
rm -rf ./system/system/app/GooglePrintRecommendationService
