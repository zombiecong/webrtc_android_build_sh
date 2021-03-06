# !/bin/bash


WEBRTC_ROOT="$PWD"

ANDROIDAPP_SOURCE_PATH="$WEBRTC_ROOT/src/webrtc/examples/androidapp"

VOICE_ENGINE_SOURCE_PATH="$WEBRTC_ROOT/src/webrtc/modules/audio_device/android/java/src/org/webrtc/voiceengine"

BASE_SOURCE_PATH="$WEBRTC_ROOT/src/webrtc/base/java/src/org/webrtc"

WEBRTC_ANDROID_API_PATH="$WEBRTC_ROOT/src/webrtc/api/android/java/src/org/webrtc/"

WEBRTC_ANDROID_SDK_PATH="$WEBRTC_ROOT/sdk_src"

function clean() {
	rm -rf "$WEBRTC_ANDROID_SDK_PATH/"* androidapp/*
}

clean

if [ ! -d "WEBRTC_ANDROID_SDK_PATH" ]; then
  	echo sdk_src exist
else
	mkdir "$WEBRTC_ANDROID_SDK_PATH"
fi

if [ ! -d "ANDROIDAPP_SOURCE_PATH" ]; then
	cp -rf "$ANDROIDAPP_SOURCE_PATH" "androidapp"
else
	echo  android app path not exist
fi

if [ ! -d "VOICE_ENGINE_SOURCE_PATH" ]; then
	cp -rf "$VOICE_ENGINE_SOURCE_PATH" "$WEBRTC_ANDROID_SDK_PATH/voiceengine"
else
	echo  voiceengine path not exist
fi

if [ ! -d "BASE_SOURCE_PATH" ]; then
	cp -rf "$BASE_SOURCE_PATH/"*.java "$WEBRTC_ANDROID_SDK_PATH/"
else
	echo  base path not exist
fi

if [ ! -d "WEBRTC_ANDROID_API_PATH" ]; then
	cp -rf "$WEBRTC_ANDROID_API_PATH/"*.java "$WEBRTC_ANDROID_SDK_PATH/"
else
	echo  android api path not not exist
fi
