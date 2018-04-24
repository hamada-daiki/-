//
//  Gameinit.swift
//  13Battle
//
//  Created by Hamada on 2018/04/06.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import SceneKit
import SpriteKit
import GameplayKit

class Gameinit: SKScene {
    
    override func didMove(to view: SKView) {
        
        let b = UIButton()
        b.frame = CGRect(x: 10, y: 10, width: 1000, height: 1000)
        b.layer.position = CGPoint(x: 0, y: 0)
        b.backgroundColor = UIColor.clear
        self.view!.addSubview(b)
    }
}
