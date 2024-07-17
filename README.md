# SwiftUIMindBlowing

SwiftUIMindBlowing is a SwiftUI sample application that shows how to integrate [Connect SDK](https://github.com/go-acoustic/Connect) following [docs](https://developer.goacoustic.com/acoustic-exp-analytics/docs/get-started-add-the-ios-sdk-to-your-project).


## Getting Started for Swift Packages

### Prerequisites

You just need xcode.

## Updating xcode project

### You will need to open the project and add the Package Dependencies
![](https://github.com/go-acoustic/SampleCode_AcousticMobilePush_iOS_ObjC/blob/main_swift_package/readMeImages/xcode_package_dependencies.png?raw=true)

1. Select `PROJECT`
2. Select `Package Dependencies`
3. And Swift Package by selecting the `+` button

### Find swift package
![](https://github.com/go-acoustic/SampleCode_AcousticMobilePush_iOS_ObjC/blob/main_swift_package/readMeImages/xcode_swift_packages_from_github.png?raw=true)

- Add url of swift package
- For debug use:
  - https://github.com/go-acoustic/ConnectDebug-SP
- For release use:
  - https://github.com/go-acoustic/Connect-SP

### Select target to add the swift package
![](https://github.com/go-acoustic/SampleCode_AcousticMobilePush_iOS_ObjC/blob/main_swift_package/readMeImages/xcode_swift_packages_select_target.png?raw=true)

### Displays swift package linked in target selected in prior step
![](https://github.com/go-acoustic/SampleCode_AcousticMobilePush_iOS_ObjC/blob/main_swift_package/readMeImages/xcode_swift_packages_add_to_target.png?raw=true)

### Project will display `Swift Packages` available for use
![](https://github.com/go-acoustic/SampleCode_AcousticMobilePush_iOS_ObjC/blob/main_swift_package/readMeImages/xcode_swift_packages_add_to_project.png?raw=true)

## Run Sample Application

Clone the sample app code from git hub location
```
git clone https://github.com/go-acoustic/SampleCode_Connect_SwiftUI.git
```
Go to the sample app location
```
cd SampleCode_Connect_SwiftUI
```
The default for SampleCode_Connect_SwiftUI is the debug version of the Connect library. You would need to update to switch to test against release version.

Note that you can use only one of `Release` or `Debug`. Do not use both at the same time.

## Troubleshooting

If you are using Debug version of Connect SDK, then you may edit your project's scheme in XCode and add environmental variable `EODebug` and set its value to 1; also add environmental variable `CONNECT_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Connect support engineers will ask you for these logs.

![Step 1](https://github.com/go-acoustic/SampleCode_Connect_SwiftUI/blob/main/readme_stuff/environment_variables.png?raw=true)

***

# Taken original code from [SwiftUIMindBlowing](https://github.com/antranapp/SwiftUIMindBlowing)
## SwiftUI MindBlowing 🤯

[![License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/Swift-5.1-blue.svg)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/Xcode-11-blue.svg)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/platforms-iOSv|%20tvOS%20|%20macOS%20|%20watchOS%20-blue.svg)](https://opensource.org/licenses/MIT)

Collections of mind-blowing SwiftUI snippets and projects.

## Why another awesome-swiftui?

SwiftUI has come with a blast during and after WWDC 2019. The technology is so exciting so that the Swift Community has quickly come up with different tutorials, sample projects and experiments showing the potential of it.

Since I am a big fan of learning by doing and from the others, I create this app for my own learning and the app serves as my effort to contribute to the community, to consolidate as many tips & tricks from the community as possible, from basic to advanced SwiftUI usages, and also to showcase many cool 🤯 projects, experiments from other developers.

The app is organized in 5 main sections:

* **Basic:** showing how to use primitive elements SwiftUI.

![Screenshot](./Docs/images/screenshot1.png)

* **Animation:** showing how to make basic animations with SwiftUI.
* **MindBlowing:** super cool, mind-blowing experiments from the community. 
* **Projects:** full-blown simple to advanced projects using SwiftUI (and Combine).
* **More:** some miscellaneous stuffs related to SwiftUI (SFSymbols, Tips & Tricks ...).

## Open and Community-driven

As SwiftUI is new and is still evolving very fast, I would welcome everyone to join me to make the app more useful to the community. PRs/New ideas are warmly welcome. 

👉 Currently, I need some help to design a logo and a banner for the repo, if you have some basic design knowledge, please don't hesitate to contact me.

## Requirements

- macOS 15 (optional to view previews)
- Xcode 11.1
- iOS 13.1+


## License

I try to integrate only MIT license friendly code. The code are copyrighted by their respective authors. I always attach the links to the original repos alongside the code.

The app itself is also licensed under MIT license as stated in [LICENSE](LICENSE) 
