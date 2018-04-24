//
//  Game_check1.swift
//  13Battle
//
//  Created by Hamada on 2018/04/06.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import SpriteKit
import GameKit

class Game_check1 : SKScene {
    
    private var yes : SKLabelNode?
    private var no : SKLabelNode?
    private var or : SKLabelNode?
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        appdelegate.audioPlayerselect?.currentTime = 30
        appdelegate.audioPlayerselect?.play()
        self.yes = self.childNode(withName: "//yes") as? SKLabelNode
        if let yes = self.yes {
            yes.alpha = 0.0
            yes.run(SKAction.fadeIn(withDuration: 2.0))
        }
        
        self.no = self.childNode(withName: "//no") as? SKLabelNode
        if let no = self.no {
            no.alpha = 0.0
            no.run(SKAction.fadeIn(withDuration: 2.0))
        }
        
        self.or = self.childNode(withName: "//or") as? SKLabelNode
        if let or = self.or {
            or.alpha = 0.0
            or.run(SKAction.fadeIn(withDuration: 2.0))
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        // タップした座標を取得する
        var tapLocation:CGPoint = CGPoint()
        tapLocation = touch!.location(in: self.view)
        //x,y座標(タッチ時)
        let tap_x = tapLocation.x
        let tap_y = tapLocation.y
      
        if tap_y >= 380 * appdelegate.scale && tap_y <= 435 * appdelegate.scale{
            if tap_x >= 170 * appdelegate.scale && tap_x <= 265 * appdelegate.scale{
                //yesタッチ
                appdelegate.audioPlayerdecision?.play()
                let scene = cardselect1(fileNamed: "cardselect1")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            }
        }
    }
}
