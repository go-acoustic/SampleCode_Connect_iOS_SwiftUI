//
//  Copyright © 2019 An Tran. All rights reserved.
//

import UIKit
import Tealeaf
import EOCore
import Connect
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let connectApplicationHelperObj =  ConnectApplicationHelper()
        
        // Enable library to load configuration settings
        let appKey:String = "b6c3709b7a4c479bb4b5a9fb8fec324c"
        let postMessageURL:String = "https://lib-us-2.brilliantcollector.com/collector/collectorPost"
        connectApplicationHelperObj.enableFramework(appKey, withPostMessageUrl: postMessageURL)
        
        // Read the new ConnectLayoutConfig settings
        let tlfAdvFilePath: String? = Bundle.main.path(forResource: "ConnectLayoutConfig", ofType: "json")
        var layoutConfigDict: [AnyHashable : Any] = [:]
        // read data into layoutConfigDict
        loadJson(filePath: tlfAdvFilePath!, jsonDict: &layoutConfigDict)
        
        // Update values in configuration for both json objects "AutoLayout" & "AppendMapIds"
        EOApplicationHelper.sharedInstance().setConfigItem("AutoLayout", value:layoutConfigDict["AutoLayout"], forModuleName:kTLFCoreModule)
        EOApplicationHelper.sharedInstance().setConfigItem("AppendMapIds", value:layoutConfigDict["AppendMapIds"], forModuleName:kTLFCoreModule)
        
        // Update values in configuration
        EOApplicationHelper.sharedInstance().setConfigItem("RemoveSwiftUIDuplicates", value:false, forModuleName:kTLFCoreModule)
        EOApplicationHelper.sharedInstance().setConfigItem("LogFullRequestResponsePayloads", value:true, forModuleName:kTLFCoreModule)
        
        return true
    }
    
    func loadJson(filePath: String, jsonDict:  inout [AnyHashable : Any]) {
        let jsonData = NSData(contentsOfFile: filePath) as Data?
        if let jsonData = jsonData, let json = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [AnyHashable : Any] {
            jsonDict = json
        }
        print("\(filePath):")
        print("\(jsonDict)")
        let error: Error? = nil
        if error != nil {
            print("Error: was not able to load for \(filePath)")
        }
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

