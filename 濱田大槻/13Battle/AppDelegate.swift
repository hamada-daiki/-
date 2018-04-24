//
//  AppDelegate.swift
//  13Battle
//
//  Created by Hamada on 2018/04/03.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import UIKit
import GameKit
import SpriteKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var cardnumber1 : Int = 0
    var cardnumber2 : Int = 0
    var sum1 : Int! = 0
    var sum2 : Int! = 0
    var turn_count : Int! = 0
    var gamereset1 : Bool! = true
    var gamereset2 : Bool! = true
    let display: CGRect  = UIScreen.main.bounds
    var scale : CGFloat! = 0.0
    
    var audioPlayer : AVAudioPlayer?
    var audioPlayerselect : AVAudioPlayer?
    var audioPlayerdecision : AVAudioPlayer?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        scale = display.size.height / 736
        // 再生する audio ファイルのパスを取得
        let audioPath = Bundle.main.path(forResource: "bgm", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        let audioPathselect = Bundle.main.path(forResource: "select", ofType:"mp3")!
        let audioUrlselect = URL(fileURLWithPath: audioPathselect)
        let audioPathdecision = Bundle.main.path(forResource: "decision", ofType:"mp3")!
        let audioUrldecision = URL(fileURLWithPath: audioPathdecision)
        // auido を再生するプレイヤーを作成する
        //var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
            audioPlayerselect = try AVAudioPlayer(contentsOf: audioUrlselect)
            audioPlayerdecision = try AVAudioPlayer(contentsOf: audioUrldecision)
        } catch let error as NSError {
           // audioError = error
            print(error)
            audioPlayer = nil
            audioPlayerselect = nil
            audioPlayerdecision = nil
        }
        audioPlayer?.numberOfLoops = -1
        audioPlayer?.play()
        audioPlayerselect?.numberOfLoops = -1
        audioPlayerselect?.stop()
        audioPlayerdecision?.stop()
        //audioPlayerselect?.currentTime = NSTimeIntervalSince1970
        UIApplication.shared.isIdleTimerDisabled = false
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

