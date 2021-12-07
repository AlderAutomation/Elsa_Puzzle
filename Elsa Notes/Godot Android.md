Godot -> Android Notes 
- Need JDK 
- Android SDK / Android Studio 
- Create new project in AS
- create android keystore 


	found at:
	https://docs.godotengine.org/en/3.1/getting_started/workflow/export/exporting_for_android.html


	keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999

- in godot > editor > editor Settings > export > android
	sdk /home/matthew/android
	adb /usr/bin/adb
	jarsigner /usr/bin/jarsigner
	debug keystore *whereever we ran comand

- project
	- export
	- download if needed
	- add..
	- android
	- runnable = on
	- unique name = com.mcorp.game
	- Name = game

- Connect device 
- make sure device is in developper mode 
