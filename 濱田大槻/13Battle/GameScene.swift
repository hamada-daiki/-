//
//  GameScene.swift
//  13Battle
//
//  Created by Hamada on 2018/04/03.
//  Copyright © 2018年 Hamada. All rights reserved.
//


import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

class GameScene: SKScene,UIApplicationDelegate {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    private var rule : SKLabelNode?
    //private var friend : SKLabelNode?
    //private var japan : SKLabelNode?
    private var game : SKLabelNode?
    private var game_part1 : SKLabelNode?
    private var game_part2 : SKLabelNode?
    private var cardA : SKSpriteNode?
    private var cardB : SKSpriteNode?
    
     
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
   
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        // Get label node from scene and store it for use later
        appdelegate.sum1 = 0
        appdelegate.sum2 = 0
        appdelegate.turn_count = 0
        appdelegate.cardnumber1 = 0
        appdelegate.cardnumber2 = 0
        appdelegate.gamereset1 = true
        appdelegate.gamereset2 = true
        
        appdelegate.audioPlayerselect?.stop()
        appdelegate.audioPlayer?.currentTime = 0
        appdelegate.audioPlayer?.play()
        
        self.label = self.childNode(withName: "//gameTitle") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
            //label.fontName = "Chalkduster"
        }
        
        self.rule = self.childNode(withName: "//rule") as? SKLabelNode
        if let label = self.rule {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 3.0))
            //label.fontName = "Chalkduster"
        }
        
        self.game = self.childNode(withName: "//game") as? SKLabelNode
        if let game = self.game {
            game.alpha = 0.0
            game.run(SKAction.fadeIn(withDuration: 3.0))
        }
        
        self.game_part1 = self.childNode(withName: "//game_part1") as? SKLabelNode
        if let game_part1 = self.game_part1 {
            game_part1.alpha = 0.0
            game_part1.run(SKAction.fadeIn(withDuration: 3.0))
        }
        
        self.game_part2 = self.childNode(withName: "//game_part2") as? SKLabelNode
        if let game_part2 = self.game_part2 {
            game_part2.alpha = 0.0
            game_part2.run(SKAction.fadeIn(withDuration: 3.0))
        }
        /*
        self.friend = self.childNode(withName: "//friend") as? SKLabelNode
        if let label = self.friend {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 3.0))
            //label.fontName = "Chalkduster"
        }
        */
        /*
        self.japan = self.childNode(withName: "//japan") as? SKLabelNode
        if let label = self.japan {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 3.0))
            //label.fontName = "Chalkduster"
        }
        */
        self.cardA = self.childNode(withName: "//cardA") as? SKSpriteNode
        if let label = self.cardA {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 3.0))
            //label.fontName = "Chalkduster"
        }
        
        self.cardB = self.childNode(withName: "//cardB") as? SKSpriteNode
        if let label = self.cardB {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 3.0))
            //label.fontName = "Chalkduster"
        }
      
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        let touch = touches.first
        // タップした座標を取得する
        var tapLocation:CGPoint = CGPoint()
        tapLocation = touch!.location(in: self.view)
        //x,y座標(タッチ時)
        let tap_x = tapLocation.x
        let tap_y = tapLocation.y

        if tap_x >= 120 * appdelegate.scale && tap_x <= 300 * appdelegate.scale {
            if tap_y >= 505 * appdelegate.scale && tap_y <= 540 * appdelegate.scale {
                //ルールシーン
                appdelegate.audioPlayerdecision?.play()
                let scene = RuleScene(fileNamed: "RuleScene")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            }
            if tap_y >= 575 * appdelegate.scale && tap_y <= 605 * appdelegate.scale {
                //ゲーム開始
                print("ゲーム開始")
                appdelegate.audioPlayerdecision?.play()
                let scene = Game_check1(fileNamed: "Game_check1")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
                appdelegate.audioPlayer?.stop()
                //self.view!.presentScene(uv)
            }
            if tap_y >= 630 * appdelegate.scale && tap_y <= 670 * appdelegate.scale {
                //全国対戦
                print("全国対戦")
            }
        }
        /*
        let scene = RuleScene(fileNamed: "RuleScene")
        scene?.scaleMode = SKSceneScaleMode.aspectFill
        self.view!.presentScene(scene)
        */
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
