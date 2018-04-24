//
//  ResultScene.swift
//  13Battle
//
//  Created by Hamada on 2018/04/13.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import Foundation
import GameKit
import SpriteKit

class ResultScene : SKScene {
    private var joker1_background : SKSpriteNode?
    private var joker2_background : SKSpriteNode?
    private var joker1 : SKSpriteNode?
    private var joker2 : SKSpriteNode?
    private var winner : SKLabelNode?
    private var player1 : SKLabelNode?
    private var player2 : SKLabelNode?
    private var player1_sub : SKLabelNode?
    private var player2_sub : SKLabelNode?
    private var sum1 : SKLabelNode?
    private var sum2 : SKLabelNode?
    private var home : SKLabelNode?
    private var draw : SKLabelNode?
    
    private let appdelegate = UIApplication.shared.delegate as! AppDelegate
    var audioPlayer : AVAudioPlayer?
    
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        let wait = SKAction.wait(forDuration: 2.0)
        let hide = SKAction.hide()
        let unhide = SKAction.unhide()
        let hide_action = SKAction.sequence([wait,hide])
        let unhide_action = SKAction.sequence([wait,unhide])
        
        let audioPath = Bundle.main.path(forResource: "cheer", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            // audioError = error
            print(error)
            audioPlayer = nil
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.audioPlayer?.play()
        }
        
        self.player1 = self.childNode(withName: "//player1_sub") as? SKLabelNode
        player1?.run(unhide_action)
        self.player2 = self.childNode(withName: "//player2_sub") as? SKLabelNode
        player2?.run(unhide_action)
        self.sum1 = self.childNode(withName: "//sum1") as? SKLabelNode
        sum1?.run(unhide_action)
        if self.sum1 != nil {
            let str = String(appdelegate.sum1)
            self.sum1?.text = str + "p"
        }
        
        self.sum2 = self.childNode(withName: "//sum2") as? SKLabelNode
        sum2?.run(unhide_action)
        if self.sum2 != nil {
            let str = String(appdelegate.sum2)
            self.sum2?.text = str + "p"
        }
        
        if appdelegate.sum1 > appdelegate.sum2 {
            self.joker1_background = self.childNode(withName: "//joker1_background") as? SKSpriteNode
            joker1_background?.run(unhide_action)
            self.joker1 = self.childNode(withName: "//joker1") as? SKSpriteNode
            joker1?.run(unhide_action)
            self.player1 = self.childNode(withName: "//player1") as? SKLabelNode
            player1?.run(unhide_action)
        } else if appdelegate.sum1 < appdelegate.sum2 {
            self.joker2_background = self.childNode(withName: "//joker2_background") as? SKSpriteNode
            joker2_background?.run(unhide_action)
            self.joker2 = self.childNode(withName: "//joker2") as? SKSpriteNode
            joker2?.run(unhide_action)
            self.player2 = self.childNode(withName: "//player2") as? SKLabelNode
            player2?.run(unhide_action)
        } else {
            self.draw = self.childNode(withName: "//draw") as? SKLabelNode
            draw?.run(unhide_action)
            self.winner = self.childNode(withName: "//winner") as? SKLabelNode
            winner?.run(hide_action)
        }
        
        self.home = self.childNode(withName: "//home") as? SKLabelNode
        home?.run(unhide_action)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        // タップした座標を取得する
        var tapLocation:CGPoint = CGPoint()
        tapLocation = touch!.location(in: self.view)
        //x,y座標(タッチ時)
        let tap_x = tapLocation.x
        let tap_y = tapLocation.y
 
        if tap_y >= 670  * appdelegate.scale && tap_y <= 715 * appdelegate.scale {
            if tap_x >= 15 * appdelegate.scale && tap_x <= 140 * appdelegate.scale {
                //home
                appdelegate.audioPlayerdecision?.play()
                let scene = GameScene(fileNamed: "GameScene")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            }
        }
    }
    
}
