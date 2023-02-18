#!/usr/bin/env bash

UNWANTED=(./system/system/app/agenda
    ./system/system/app/airmail
    ./system/system/app/BasicDreams
    ./system/system/app/data
    ./system/system/app/LiveWallpapersPicker
    ./system/system/app/notes
    ./system/system/app/sync
    ./system/system/app/vivaldi
    ./system/system/app/voiceassist
    ./system/system/app/onesearch
    ./system/system/app/Protips
    ./system/system/priv-app/EngineerCode
    ./system/system/priv-app/EngineerMode
    ./system/system/priv-app/CallRecorderService
    ./system/system/priv-app/CellBroadcastLegacyApp
    ./system/system/priv-app/DocumentsUI
    ./system/system/priv-app/MusicFX
    ./system/system/priv-app/PlanetBackup
    ./system/system/priv-app/PlanetUpdater
    ./system/system/priv-app/SystemUpdate
    ./system/system/priv-app/SystemUpdateAssistant
    ./system/system/system_ext/priv-app/FMRadio
    ./product/app/CalendarGoogle
    ./product/app/Chrome
    ./product/app/Drive
    ./product/app/Duo
    ./product/app/Gmail2
    ./product/app/Maps
    ./product/app/Photos
    ./product/app/SpeechServicesByGoogle
    ./product/app/TrichromeLibrary
    ./product/app/Videos
    ./product/app/YouTube
    ./product/app/YTMusic
    ./product/priv-app/AndroidAutoStub
    ./product/priv-app/AssistantShell
    ./product/priv-app/FilesGoogle
    ./product/priv-app/Velvet
    ./product/priv-app/Wellbeing
    ./system/system/app/Fota
    ./product/app/WebViewGoogle/oat/arm/WebViewGoogle*
    ./product/app/WebViewGoogle/
    ./system/system/system_ext/priv-app/MtkLauncher3QuickStep
    ./system/system/priv-app/DocumentsUI/DocumentsUI.apk
    ./system/system/system_ext/app/MtkGallery2
    ./system/system/system_ext/app/MtkWallpaperPicker
    ./system/system/apex/com.google.android.cellbroadcast.apex
    ./system/system/app/GooglePrintRecommendationService)

cd tmp

for app in "${UNWANTED[@]}"; do
    rm -rf "${app}"
done
