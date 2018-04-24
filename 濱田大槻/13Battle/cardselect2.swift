//
//  cardselect1.swift
//  13Battle
//
//  Created by Hamada on 2018/04/06.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import Foundation
import GameKit
import SpriteKit

class cardselect2: SKScene,UIApplicationDelegate{
    private var h1 : SKSpriteNode?
    private var h2 : SKSpriteNode?
    private var h3 : SKSpriteNode?
    private var h4 : SKSpriteNode?
    private var h5 : SKSpriteNode?
    private var h6 : SKSpriteNode?
    private var h7 : SKSpriteNode?
    private var h8 : SKSpriteNode?
    private var h9 : SKSpriteNode?
    private var h10 : SKSpriteNode?
    private var h11 : SKSpriteNode?
    private var h12 : SKSpriteNode?
    private var h13 : SKSpriteNode?
    private var joker : SKSpriteNode?
    private var yes : SKLabelNode?
    private var no : SKLabelNode?
    private var or : SKLabelNode?
    private var check : SKLabelNode?
    private var sum1 : SKLabelNode?
    private var sum2 : SKLabelNode?
    
    static var h1_hide = false
    static var h2_hide = false
    static var h3_hide = false
    static var h4_hide = false
    static var h5_hide = false
    static var h6_hide = false
    static var h7_hide = false
    static var h8_hide = false
    static var h9_hide = false
    static var h10_hide = false
    static var h11_hide = false
    static var h12_hide = false
    static var h13_hide = false
    static var joker_hide = false
    
    private var selectflag = false
    public var cardnumber2 : Int = 0
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        appdelegate.audioPlayerselect?.play()
        
        if appdelegate.gamereset2 == true {
            cardselect2.h1_hide = false
            cardselect2.h2_hide = false
            cardselect2.h3_hide = false
            cardselect2.h4_hide = false
            cardselect2.h5_hide = false
            cardselect2.h6_hide = false
            cardselect2.h7_hide = false
            cardselect2.h8_hide = false
            cardselect2.h9_hide = false
            cardselect2.h10_hide = false
            cardselect2.h11_hide = false
            cardselect2.h12_hide = false
            cardselect2.h13_hide = false
            cardselect2.joker_hide = false
        }
        
        self.sum1 = self.childNode(withName: "//sum1") as? SKLabelNode
        if self.sum1 != nil {
            let str = String(appdelegate.sum1)
            self.sum1?.text = str + "p"
        }
        
        self.sum2 = self.childNode(withName: "//sum2") as? SKLabelNode
        if self.sum2 != nil {
            let str = String(appdelegate.sum2)
            self.sum2?.text = str + "p"
        }
        self.h1 = self.childNode(withName: "//h1") as? SKSpriteNode
        if let h1 = self.h1 {
            h1.alpha = 0.0
            h1.run(SKAction.fadeIn(withDuration: 1.0))
            if cardselect2.h1_hide == true {
                h1.isHidden = true
            }
        }
        
        self.h2 = self.childNode(withName: "//h2") as? SKSpriteNode
        if let h2 = self.h2 {
            h2.alpha = 0.0
            h2.run(SKAction.fadeIn(withDuration: 1.1))
            if cardselect2.h2_hide == true {
                h2.isHidden = true
            }
        }
        
        self.h3 = self.childNode(withName: "//h3") as? SKSpriteNode
        if let h3 = self.h3 {
            h3.alpha = 0.0
            h3.run(SKAction.fadeIn(withDuration: 1.2))
            if cardselect2.h3_hide == true {
                h3.isHidden = true
            }
        }
        
        self.h4 = self.childNode(withName: "//h4") as? SKSpriteNode
        if let h4 = self.h4 {
            h4.alpha = 0.0
            h4.run(SKAction.fadeIn(withDuration: 1.3))
            if cardselect2.h4_hide == true {
                h4.isHidden = true
            }
        }
        
        self.h5 = self.childNode(withName: "//h5") as? SKSpriteNode
        if let h5 = self.h5 {
            h5.alpha = 0.0
            h5.run(SKAction.fadeIn(withDuration: 1.4))
            if cardselect2.h5_hide == true {
                h5.isHidden = true
            }
        }
        
        self.h6 = self.childNode(withName: "//h6") as? SKSpriteNode
        if let h6 = self.h6 {
            h6.alpha = 0.0
            h6.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h6_hide == true {
                h6.isHidden = true
            }
        }
        
        self.h7 = self.childNode(withName: "//h7") as? SKSpriteNode
        if let h7 = self.h7 {
            h7.alpha = 0.0
            h7.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h7_hide == true {
                h7.isHidden = true
            }
        }
        
        self.h8 = self.childNode(withName: "//h8") as? SKSpriteNode
        if let h8 = self.h8 {
            h8.alpha = 0.0
            h8.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h8_hide == true {
                h8.isHidden = true
            }
        }
        
        self.h9 = self.childNode(withName: "//h9") as? SKSpriteNode
        if let h9 = self.h9 {
            h9.alpha = 0.0
            h9.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h9_hide == true {
                h9.isHidden = true
            }
        }
        
        self.h10 = self.childNode(withName: "//h10") as? SKSpriteNode
        if let h10 = self.h10 {
            h10.alpha = 0.0
            h10.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h10_hide == true {
                h10.isHidden = true
            }
        }
        
        self.h11 = self.childNode(withName: "//h11") as? SKSpriteNode
        if let h11 = self.h11 {
            h11.alpha = 0.0
            h11.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h11_hide == true {
                h11.isHidden = true
            }
        }
        
        self.h12 = self.childNode(withName: "//h12") as? SKSpriteNode
        if let h12 = self.h12 {
            h12.alpha = 0.0
            h12.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h12_hide == true {
                h12.isHidden = true
            }
        }
        
        self.h13 = self.childNode(withName: "//h13") as? SKSpriteNode
        if let h13 = self.h13 {
            h13.alpha = 0.0
            h13.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.h13_hide == true {
                h13.isHidden = true
            }
        }
        
        self.joker = self.childNode(withName: "//joker") as? SKSpriteNode
        if let joker = self.joker {
            joker.alpha = 0.0
            joker.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect2.joker_hide == true {
                joker.isHidden = true
            }
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
       
        if selectflag == false {
            //1段目
            if tap_y >= 85 * appdelegate.scale && tap_y <= 185 * appdelegate.scale {
                if tap_x >= 30 * appdelegate.scale && tap_x <= 100 * appdelegate.scale {
                    //1
                    if cardselect2.h1_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 1
                        appdelegate.cardnumber2 = 1
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h1?.run(actionbig)
                        h1?.run(actionmove)
                        cardalpha(cardname: "h1")
                    }
                } else if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //2
                    if cardselect2.h2_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 2
                        appdelegate.cardnumber2 = 2
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h2?.run(actionbig)
                        h2?.run(actionmove)
                        cardalpha(cardname: "h2")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //3
                    if cardselect2.h3_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 3
                        appdelegate.cardnumber2 = 3
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h3?.run(actionbig)
                        h3?.run(actionmove)
                        cardalpha(cardname: "h3")
                    }
                } else if tap_x >= 315 * appdelegate.scale && tap_x <= 385 * appdelegate.scale {
                    //4
                    if cardselect2.h4_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 4
                        appdelegate.cardnumber2 = 4
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h4?.run(actionbig)
                        h4?.run(actionmove)
                        cardalpha(cardname: "h4")
                    }
                }
            }
            //2段目
            if tap_y >= 230 * appdelegate.scale && tap_y <= 330 * appdelegate.scale {
                if tap_x >= 30 * appdelegate.scale && tap_x <= 100 * appdelegate.scale {
                    //5
                    if cardselect2.h5_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 5
                        appdelegate.cardnumber2 = 5
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h5?.run(actionbig)
                        h5?.run(actionmove)
                        cardalpha(cardname: "h5")
                    }
                } else if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //6
                    if cardselect2.h6_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 6
                        appdelegate.cardnumber2 = 6
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h6?.run(actionbig)
                        h6?.run(actionmove)
                        cardalpha(cardname: "h6")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //7
                    if cardselect2.h7_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 7
                        appdelegate.cardnumber2 = 7
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h7?.run(actionbig)
                        h7?.run(actionmove)
                        cardalpha(cardname: "h7")
                    }
                } else if tap_x >= 315 * appdelegate.scale && tap_x <= 385 * appdelegate.scale {
                    //8
                    if cardselect2.h8_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 8
                        appdelegate.cardnumber2 = 8
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h8?.run(actionbig)
                        h8?.run(actionmove)
                        cardalpha(cardname: "h8")
                    }
                }
            }
            //3段目
            if tap_y >= 365 * appdelegate.scale && tap_y <= 465 * appdelegate.scale {
                if tap_x >= 30 * appdelegate.scale && tap_x <= 100 * appdelegate.scale {
                    //9
                    if cardselect2.h9_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 9
                        appdelegate.cardnumber2 = 9
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h9?.run(actionbig)
                        h9?.run(actionmove)
                        cardalpha(cardname: "h9")
                    }
                } else if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //10
                    if cardselect2.h10_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 10
                        appdelegate.cardnumber2 = 10
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h10?.run(actionbig)
                        h10?.run(actionmove)
                        cardalpha(cardname: "h10")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //11
                    if cardselect2.h11_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 11
                        appdelegate.cardnumber2 = 11
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h11?.run(actionbig)
                        h11?.run(actionmove)
                        cardalpha(cardname: "h11")
                    }
                } else if tap_x >= 315 * appdelegate.scale && tap_x <= 385 * appdelegate.scale {
                    //12
                    if cardselect2.h12_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 12
                        appdelegate.cardnumber2 = 12
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h12?.run(actionbig)
                        h12?.run(actionmove)
                        cardalpha(cardname: "h12")
                    }
                }
            }
            //4段目
            if tap_y >= 495 * appdelegate.scale && tap_y <= 595 * appdelegate.scale {
                if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //13
                    if cardselect2.h13_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 13
                        appdelegate.cardnumber2 = 13
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        h13?.run(actionbig)
                        h13?.run(actionmove)
                        cardalpha(cardname: "h13")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //joker
                    if cardselect2.joker_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber2 = 14
                        appdelegate.cardnumber2 = 14
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        joker?.run(actionbig)
                        joker?.run(actionmove)
                        cardalpha(cardname: "joker")
                    }
                }
            }
        } else if selectflag == true {
            if tap_y >= 410 * appdelegate.scale && tap_y <= 455 * appdelegate.scale {
                if tap_x >= 85 * appdelegate.scale && tap_x <= 180 * appdelegate.scale {
                    appdelegate.audioPlayerdecision?.play()
                    selectflag = false
                    switch cardnumber2 {
                    case 1:
                        cardselect2.h1_hide = true
                    case 2:
                        cardselect2.h2_hide = true
                    case 3:
                        cardselect2.h3_hide = true
                    case 4:
                        cardselect2.h4_hide = true
                    case 5:
                        cardselect2.h5_hide = true
                    case 6:
                        cardselect2.h6_hide = true
                    case 7:
                        cardselect2.h7_hide = true
                    case 8:
                        cardselect2.h8_hide = true
                    case 9:
                        cardselect2.h9_hide = true
                    case 10:
                        cardselect2.h10_hide = true
                    case 11:
                        cardselect2.h11_hide = true
                    case 12:
                        cardselect2.h12_hide = true
                    case 13:
                        cardselect2.h13_hide = true
                    case 14:
                        cardselect2.joker_hide = true
                    default:
                        print("error")
                    }
                    let scene = BattleScene(fileNamed: "BattleScene")
                    scene?.scaleMode = SKSceneScaleMode.aspectFill
                    self.view!.presentScene(scene)
                    appdelegate.gamereset2 = false
                } else if tap_x >= 275 * appdelegate.scale && tap_x <= 350 * appdelegate.scale {
                    appdelegate.audioPlayerdecision?.play()
                    self.yes = self.childNode(withName: "//yes") as? SKLabelNode
                    self.yes?.isHidden = true
                    self.no = self.childNode(withName: "//no") as? SKLabelNode
                    self.no?.isHidden = true
                    self.or = self.childNode(withName: "//or") as? SKLabelNode
                    self.or?.isHidden = true
                    self.check = self.childNode(withName: "//check") as? SKLabelNode
                    self.check?.isHidden = true
                    selectflag = false
                    let scene = cardselect2(fileNamed: "cardselect2")
                    scene?.scaleMode = SKSceneScaleMode.aspectFill
                    self.view!.presentScene(scene)
                }
            }
        }
    }
    
    private func cardalpha(cardname : String){
        switch cardname {
        case "h1":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.01))
            h11?.run(SKAction.fadeOut(withDuration: 1.02))
            h12?.run(SKAction.fadeOut(withDuration: 1.03))
            h13?.run(SKAction.fadeOut(withDuration: 1.14))
            joker?.run(SKAction.fadeOut(withDuration: 1.15))
        case "h2":
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.1))
            h11?.run(SKAction.fadeOut(withDuration: 1.1))
            h12?.run(SKAction.fadeOut(withDuration: 1.11))
            h13?.run(SKAction.fadeOut(withDuration: 1.12))
            joker?.run(SKAction.fadeOut(withDuration: 1.14))
        case "h3":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.01))
            joker?.run(SKAction.fadeOut(withDuration: 1.02))
        case "h4":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.01))
            h12?.run(SKAction.fadeOut(withDuration: 1.02))
            h13?.run(SKAction.fadeOut(withDuration: 1.03))
            joker?.run(SKAction.fadeOut(withDuration: 1.04))
        case "h5":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "h6":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "h7":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "h8":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "h9":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.01))
        case "h10":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "h11":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "h12":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "h13":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.01))
        case "joker":
            h2?.run(SKAction.fadeOut(withDuration: 1.0))
            h3?.run(SKAction.fadeOut(withDuration: 1.0))
            h4?.run(SKAction.fadeOut(withDuration: 1.0))
            h5?.run(SKAction.fadeOut(withDuration: 1.0))
            h6?.run(SKAction.fadeOut(withDuration: 1.0))
            h7?.run(SKAction.fadeOut(withDuration: 1.0))
            h8?.run(SKAction.fadeOut(withDuration: 1.0))
            h9?.run(SKAction.fadeOut(withDuration: 1.0))
            h10?.run(SKAction.fadeOut(withDuration: 1.0))
            h11?.run(SKAction.fadeOut(withDuration: 1.0))
            h12?.run(SKAction.fadeOut(withDuration: 1.0))
            h13?.run(SKAction.fadeOut(withDuration: 1.01))
            h1?.run(SKAction.fadeOut(withDuration: 1.0))
        default:
            print("error")
        }
    }
    
    func label_action () {
        self.yes = self.childNode(withName: "//yes") as? SKLabelNode
        if let yes = self.yes {
            yes.isHidden = false
            yes.alpha = 0.0
            yes.run(SKAction.fadeIn(withDuration: 1.5))
        }
        self.no = self.childNode(withName: "//no") as? SKLabelNode
        if let no = self.no {
            no.isHidden = false
            no.alpha = 0.0
            no.run(SKAction.fadeIn(withDuration: 1.5))
        }
        self.or = self.childNode(withName: "//or") as? SKLabelNode
        if let or = self.or {
            or.isHidden = false
            or.alpha = 0.0
            or.run(SKAction.fadeIn(withDuration: 1.5))
        }
        self.check = self.childNode(withName: "//check") as? SKLabelNode
        if let check = self.check {
            check.isHidden = false
            check.alpha = 0.0
            check.run(SKAction.fadeIn(withDuration: 1.5))
        }
    }
    
}

