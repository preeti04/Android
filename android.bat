
:: move to the location where andriod sdk is intalled
:: Following path need to be set in system variable
::PATH= ~./android-sdk/tools; ~./android-sdk/platform-tools
cd C:\Users\priti\AppData\Local\Android\sdk\tools

::start the andriod sdk
android sdk

::create the avd 
android create avd --name myandroidapp1 -t 4 --abi "google_apis/x86"

::display emulator device
adb devices

::start the emulator
emulator -avd myandroidapp1

::install the .apk app
::adb install <path-of-api>
adb  install C:\Users\priti\Downloads\Adobe_Acrobat_Reader15.0.2.apk

::run the application using am
adb shell am start -n com.adobe.reader/.Adobe_Acrobat_Reader15.0.2

::Or to check specific action check the Manifest.xml file and specify the android:value
::am start -a android.intent.action.MAIN -n <package_name>/<full_class_name>

::take a snapshot
adb shell screencap -p /B:/test/screencap.png

::uninstall the app
adb uninstall com.adobe.reader

::uninstall the avd
android delete avd -n myandroidapp1



