# JLaTeXMath-iOS
JLaTeXMath for iOS

This project is a fork of original JLaTeXMath (http://forge.scilab.org/index.php/p/jlatexmath/), refacored to be used on iOS device. Converted by j2Objc.

##Include in your project 

First, download j2Objc from http://j2objc.org/. Drag this project into your main app project. </br>

###In Building Setting, 
Add "${your j2objc source folder path}/include" and to "User Header Search Path" </br>
Add "${PROJECT_DIR}/JLaTeXMath-iOS" to "User Header Search Path", and choose recursive. </br>
Add "${your j2objc source folder path}/lib" to "library search path"</br>

###In Build Phase, 
Add libcucore.dylib, libz.1.2.5.dylib and Security.framework to "Link Binary With Libraries" </br>
Add all files under cyrillic, fonts and greek to "Copy Bundle Resources"

##Usage
Before using, set the platform dependent factory instance. 
```
OrgScilabForgeJlatexmathPlatformFactoryProvider_set_INSTANCE_([[FactoryProvideriOS alloc] init]);
```
You can find the example in ViewController.m 

##Screenshot
![Alt text](/screenshot.png)






