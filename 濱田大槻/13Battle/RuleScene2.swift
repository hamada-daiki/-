//
//  RuleScene2.swift
//  13Battle
//
//  Created by Hamada on 2018/04/04.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import SceneKit
import SpriteKit
import GameplayKit

class RuleScen2: SKScene {
    
    private var rule3 : SKLabelNode?
    private var rule4 : SKLabelNode?
    private var rule5 : SKLabelNode?
    private var rule6 : SKLabelNode?
    private var rule7 : SKLabelNode?
    private var rule8 : SKLabelNode?
    private var rule9 : SKLabelNode?
    private var win : SKLabelNode?
    private var get : SKLabelNode?
    private var home : SKLabelNode?
    private var back : SKLabelNode?
    private var page2 : SKLabelNode?
    private var cardA : SKSpriteNode?
    private var cardB : SKSpriteNode?
    private var arrow : SKSpriteNode?
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        self.rule3 = self.childNode(withName: "//rule3") as? SKLabelNode
        if let rule3 = self.rule3 {
            rule3.alpha = 0.0
            rule3.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule4 = self.childNode(withName: "//rule4") as? SKLabelNode
        if let rule4 = self.rule4 {
            rule4.alpha = 0.0
            rule4.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule5 = self.childNode(withName: "//rule5") as? SKLabelNode
        if let rule5 = self.rule5 {
            rule5.alpha = 0.0
            rule5.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule6 = self.childNode(withName: "//rule6") as? SKLabelNode
        if let rule6 = self.rule6 {
            rule6.alpha = 0.0
            rule6.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule7 = self.childNode(withName: "//rule7") as? SKLabelNode
        if let rule7 = self.rule7 {
            rule7.alpha = 0.0
            rule7.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule8 = self.childNode(withName: "//rule8") as? SKLabelNode
        if let rule8 = self.rule8 {
            rule8.alpha = 0.0
            rule8.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule9 = self.childNode(withName: "//rule9") as? SKLabelNode
        if let rule9 = self.rule9 {
            rule9.alpha = 0.0
            rule9.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.win = self.childNode(withName: "//win") as? SKLabelNode
        if let win = self.win {
            win.alpha = 0.0
            win.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.get = self.childNode(withName: "//get") as? SKLabelNode
        if let get = self.get {
            get.alpha = 0.0
            get.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.home = self.childNode(withName: "//home") as? SKLabelNode
        if let home = self.home {
            home.alpha = 0.0
            home.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.back = self.childNode(withName: "//back") as? SKLabelNode
        if let back = self.back {
            back.alpha = 0.0
            back.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.page2 = self.childNode(withName: "//page2") as? SKLabelNode
        if let page2 = self.page2 {
            page2.alpha = 0.0
            page2.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.cardA = self.childNode(withName: "//cardA") as? SKSpriteNode
        if let cardA = self.cardA {
            cardA.alpha = 0.0
            cardA.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.cardB = self.childNode(withName: "//cardB") as? SKSpriteNode
        if let cardB = self.cardB {
            cardB.alpha = 0.0
            cardB.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.arrow = self.childNode(withName: "//arrow") as? SKSpriteNode
        if let arrow = self.arrow {
            arrow.alpha = 0.0
            arrow.run(SKAction.fadeIn(withDuration: 1.0))
        }
        // Called before each frame is rendered
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        // タップした座標を取得する
        var tapLocation:CGPoint = CGPoint()
        tapLocation = touch!.location(in: self.view)
        //x,y座標(タッチ時)
        let tap_x = tapLocation.x
        let tap_y = tapLocation.y
        
        if tap_x >= 300 * appdelegate.scale && tap_x <= 400 * appdelegate.scale {
            if tap_y >= 660 * appdelegate.scale && tap_y <= 720 * appdelegate.scale{
                appdelegate.audioPlayerdecision?.play()
                let scene = GameScene(fileNamed: "GameScene")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            }
        }
        
        if tap_x >= 0 && tap_x <= 130 * appdelegate.scale{
            if tap_y >= 660 * appdelegate.scale && tap_y <= 720 * appdelegate.scale {
                appdelegate.audioPlayerdecision?.play()
                let scene = RuleScene(fileNamed: "RuleScene")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

