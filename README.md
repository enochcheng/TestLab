# android-xml-run-listener

This repo is forked from https://github.com/schroepf/TestLab, adding Android.mk to build into AOSP environment.

## Integrating android-xml-run-listener using gradle

Add dependency to `build.gradle`:
```
androidTestCompile 'de.schroepf:android-xml-run-listener:0.1.3'
```

## Integrating android-xml-run-listener using Android.mk
```
LOCAL_STATIC_JAVA_LIBRARIES += android-xml-run-listener
```

## Use from Android Studio

Add the following option to "Extra options" of your Instrumentation Tests run configurations:
```
-e listener de.schroepf.androidxmlrunlistener.XmlRunListener
```

## Use from command line

Add following option:
```
-e listener de.schroepf.androidxmlrunlistener.XmlRunListener
```
to the `adb shell am instrument` command, e.g.:
```
adb shell am instrument -w -e listener de.schroepf.androidxmlrunlistener.XmlRunListener -e debug false your_test_package/android.support.test.runner.AndroidJUnitRunner
```

## Retrieve report xml file

The `report.xml` file will be stored in the tests application's documents folder, e.g.:
```
adb shell cat /storage/emulated/0/Android/data/your_test_package/files/report.xml
```

to copy it from the device to the computer:
```
adb pull /storage/emulated/0/Android/data/your_test_package/files/report.xml
```
