#!/bin/bash
ANDROID_STUDIO_DIR=$(ls -d ~/Library/Application\ Support/JetBrains/Toolbox/apps/AndroidStudio/ch-0/* | grep "[0-9]\+$" | sort | tail -n 1 | awk '{print $0"/Android Studio.app"}')
flutter config --android-studio-dir="$ANDROID_STUDIO_DIR"
