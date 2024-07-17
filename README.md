# SwiftUIMindBlowing

SwiftUIMindBlowing is a SwiftUI sample application that shows how to integrate [Connect SDK](https://github.com/go-acoustic/Connect) following [docs](https://developer.goacoustic.com/acoustic-exp-analytics/docs/get-started-add-the-ios-sdk-to-your-project).


## Getting Started for Carthage

### Prerequisites

You need to have recent carthage version install on your Mac OS. Current version is 0.36.0. [Please refer to carthage website for the details](https://github.com/Carthage/Carthage).

For SDK prerequisites and documentation, please refer to the SDK documentation [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/get-started-add-the-ios-sdk-to-your-project)

### Installing

Clone the sample app code from git hub location
```
git clone https://github.com/go-acoustic/SampleCode_Connect_SwiftUI.git
```
Go to the sample app location
```
cd SampleCode_Connect_SwiftUI
```
Open Cartfile in a text editor of your choice and note the following lines:

In the respective targets for your project in the Podfile add the following line if you want to use Connect SDK's release version
```
binary "https://raw.githubusercontent.com/go-acoustic/EOCore/master/EOCore.json" >= 2.3.273
binary "https://raw.githubusercontent.com/go-acoustic/Tealeaf/master/Tealeaf.json" >= 10.6.288
binary "https://raw.githubusercontent.com/go-acoustic/Connect/master/Connect.json" >= 1.0.16
```

In the respective targets for your project in the Podfile add the following line if you want to use Connect SDK's debug version
```
binary "https://raw.githubusercontent.com/go-acoustic/EOCore/master/EOCoreDebug.json" >= 2.3.273
binary "https://raw.githubusercontent.com/go-acoustic/Tealeaf/master/TealeafDebug.json" >= 10.6.288
binary "https://raw.githubusercontent.com/go-acoustic/Connect/master/ConnectDebug.json" >= 1.0.16
```
You will notice that by default the sample application uses `Debug` version of libraries.

Note that you can use only one of  `Release` or `Debug`. Do not use both at the same time.

Now you need to install the carthage by running the following command.
```
carthage update --use-xcframeworks
```
Above carthage command should complete with no errors.

## Troubleshooting

If you are using Debug version of Connect SDK. i.e. `pod 'AcousticConnectDebug'` , then you may edit your project's scheme in XCode and add environmental variable `EODebug` and set its value to 1; also add environmental variable `CONNECT_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Connect support engineers will ask you for these logs.

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
