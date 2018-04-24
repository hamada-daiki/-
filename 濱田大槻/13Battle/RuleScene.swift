//
//  Rule.swift
//  13Battle
//
//  Created by Hamada on 2018/04/03.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import SceneKit
import SpriteKit
import GameplayKit

class RuleScene: SKScene {
   
    private var rule1 : SKLabelNode?
    private var rule2 : SKLabelNode?
    private var rule3 : SKLabelNode?
    private var weak : SKLabelNode?
    private var weak2 : SKLabelNode?
    private var strong : SKLabelNode?
    private var strong2 : SKLabelNode?
    private var home : SKLabelNode?
    private var after : SKLabelNode?
    private var page1 : SKLabelNode?
    private var cardA : SKSpriteNode?
    private var cardB : SKSpriteNode?
    private var cardC : SKSpriteNode?
    private var cardD : SKSpriteNode?
    private var cardE : SKSpriteNode?
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        self.rule1 = self.childNode(withName: "//rule1") as? SKLabelNode
        if let rule1 = self.rule1 {
            rule1.alpha = 0.0
            rule1.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule2 = self.childNode(withName: "//rule2") as? SKLabelNode
        if let rule2 = self.rule2 {
            rule2.alpha = 0.0
            rule2.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule3 = self.childNode(withName: "//rule3") as? SKLabelNode
        if let rule3 = self.rule3 {
            rule3.alpha = 0.0
            rule3.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.weak = self.childNode(withName: "//weak") as? SKLabelNode
        if let weak = self.weak {
            weak.alpha = 0.0
            weak.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.weak2 = self.childNode(withName: "//weak2") as? SKLabelNode
        if let weak2 = self.weak2 {
            weak2.alpha = 0.0
            weak2.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.strong = self.childNode(withName: "//strong") as? SKLabelNode
        if let strong = self.strong {
            strong.alpha = 0.0
            strong.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.strong2 = self.childNode(withName: "//strong2") as? SKLabelNode
        if let strong2 = self.strong2 {
            strong2.alpha = 0.0
            strong2.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.home = self.childNode(withName: "//home") as? SKLabelNode
        if let home = self.home {
            home.alpha = 0.0
            home.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        
        self.after = self.childNode(withName: "//next") as? SKLabelNode
        if let next = self.after {
            next.alpha = 0.0
            next.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
        }
        
        self.page1 = self.childNode(withName: "//page1") as? SKLabelNode
        if let page1 = self.page1 {
            page1.alpha = 0.0
            page1.run(SKAction.fadeIn(withDuration: 1.0))
            //label.fontName = "Chalkduster"
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
        
        self.cardC = self.childNode(withName: "//cardC") as? SKSpriteNode
        if let cardC = self.cardC {
            cardC.alpha = 0.0
            cardC.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.cardD = self.childNode(withName: "//cardD") as? SKSpriteNode
        if let cardD = self.cardD {
            cardD.alpha = 0.0
            cardD.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        self.cardE = self.childNode(withName: "//cardE") as? SKSpriteNode
        if let cardE = self.cardE {
            cardE.alpha = 0.0
            cardE.run(SKAction.fadeIn(withDuration: 1.0))
        }
        
        var point = [CGPoint(x:-100, y:200),
                     CGPoint(x:100.0, y:230),
                     CGPoint(x:100.0, y:280),
                     CGPoint(x:250.0, y:200),
                     CGPoint(x:100.0, y:120),
                     CGPoint(x:100.0, y:170),
                     CGPoint(x: -100.0, y: 200)]
        
        let strong_point = SKShapeNode(points: &point, count: point.count)
        strong_point.fillColor = UIColor.white
        strong_point.position = CGPoint(x: -80,y: -70)
        let strong_point_tt = SKTexture(imageNamed: "gradation")
        strong_point.fillTexture = strong_point_tt
        strong_point.alpha = 0.0
        strong_point.run(SKAction.fadeIn(withDuration: 5.0))
        
        let strong_point2 = SKShapeNode(points: &point, count: point.count)
        strong_point2.fillColor = UIColor.white
        strong_point2.position = CGPoint(x: -80,y: -500)
        strong_point2.fillTexture = strong_point_tt
        strong_point2.alpha = 0.0
        strong_point2.run(SKAction.fadeIn(withDuration: 5.0))
        
        self.addChild(strong_point)
        self.addChild(strong_point2)
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
                let scene = RuleScen2(fileNamed: "RuleScene2")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            }
        }
        
        if tap_x >= 0  && tap_x <= 130 * appdelegate.scale {
            if tap_y >= 660 * appdelegate.scale && tap_y <= 720 * appdelegate.scale{
                appdelegate.audioPlayerdecision?.play()
                let scene = GameScene(fileNamed: "GameScene")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
