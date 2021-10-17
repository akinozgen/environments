#!/bin/bash
export LANG=tr_TR.UTF-8
export LC_ALL=tr_TR.UTF-8
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export ANDROID_HOME="/home/akinozgen/Android/Sdk"
export PATH="$PATH:/usr/local/gradle/bin/:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/30.0.2/:$JAVA_HOME/bin:$HOME/.local/bin/:$HOME/.config/flutter/bin:/home/akinozgen/.config/composer/vendor/bin"

export ANDROID_SDK_HOME="$ANDROID_HOME"
export ANDROID_AVD_HOME="$HOME/.android/"
export ANDROID_EMULATOR_HOME="$HOME/.android"
export ADB_VENDOR_KEY="$HOME/.android"

# wal -i $(cat .config/nitrogen/bg-saved.cfg | grep 'file=' | sed 's/file\=//g')
export VIRMACH=107.172.43.156
export LINODE=172.104.203.204
export ANDROID_SDK_ROOT=$ANDROID_HOME
