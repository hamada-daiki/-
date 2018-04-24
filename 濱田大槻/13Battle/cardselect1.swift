//
//  cardselect1.swift
//  13Battle
//
//  Created by Hamada on 2018/04/06.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import SceneKit
import SpriteKit
import GameplayKit

class cardselect1: SKScene,UIApplicationDelegate{
    private var s1 : SKSpriteNode?
    static var s1_hide = false
    private var s2 : SKSpriteNode?
    static var s2_hide = false
    private var s3 : SKSpriteNode?
    static var s3_hide = false
    private var s4 : SKSpriteNode?
    static var s4_hide = false
    private var s5 : SKSpriteNode?
    static var s5_hide = false
    private var s6 : SKSpriteNode?
    static var s6_hide = false
    private var s7 : SKSpriteNode?
    static var s7_hide = false
    private var s8 : SKSpriteNode?
    static var s8_hide = false
    private var s9 : SKSpriteNode?
    static var s9_hide = false
    private var s10 : SKSpriteNode?
    static var s10_hide = false
    private var s11 : SKSpriteNode?
    static var s11_hide = false
    private var s12 : SKSpriteNode?
    static var s12_hide = false
    private var s13 : SKSpriteNode?
    static var s13_hide = false
    private var joker : SKSpriteNode?
    static var joker_hide = false
    private var yes : SKLabelNode?
    private var no : SKLabelNode?
    private var or : SKLabelNode?
    private var check : SKLabelNode?
    private var sum1 : SKLabelNode?
    private var sum2 : SKLabelNode?
    
    private var nowscene : SKScene?
    private var selectflag = false
    var cardnumber1 : Int = 0
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        if appdelegate.gamereset1 == true {
            cardselect1.s1_hide = false
            cardselect1.s2_hide = false
            cardselect1.s3_hide = false
            cardselect1.s4_hide = false
            cardselect1.s5_hide = false
            cardselect1.s6_hide = false
            cardselect1.s7_hide = false
            cardselect1.s8_hide = false
            cardselect1.s9_hide = false
            cardselect1.s10_hide = false
            cardselect1.s11_hide = false
            cardselect1.s12_hide = false
            cardselect1.s13_hide = false
            cardselect1.joker_hide = false
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
        
        self.s1 = self.childNode(withName: "//s1") as? SKSpriteNode
        if let s1 = self.s1 {
            s1.alpha = 0.0
            s1.run(SKAction.fadeIn(withDuration: 1.0))
            if cardselect1.s1_hide == true {
                s1.isHidden = true
            }
        }
        
        self.s2 = self.childNode(withName: "//s2") as? SKSpriteNode
        if let s2 = self.s2 {
            s2.alpha = 0.0
            s2.run(SKAction.fadeIn(withDuration: 1.1))
            if cardselect1.s2_hide == true {
                s2.isHidden = true
            }
        }
        
        self.s3 = self.childNode(withName: "//s3") as? SKSpriteNode
        if let s3 = self.s3 {
            s3.alpha = 0.0
            s3.run(SKAction.fadeIn(withDuration: 1.2))
            if cardselect1.s3_hide == true {
                s3.isHidden = true
            }
        }
        
        self.s4 = self.childNode(withName: "//s4") as? SKSpriteNode
        if let s4 = self.s4 {
            s4.alpha = 0.0
            s4.run(SKAction.fadeIn(withDuration: 1.3))
            if cardselect1.s4_hide == true {
                s4.isHidden = true
            }
        }
        
        self.s5 = self.childNode(withName: "//s5") as? SKSpriteNode
        if let s5 = self.s5 {
            s5.alpha = 0.0
            s5.run(SKAction.fadeIn(withDuration: 1.4))
            if cardselect1.s5_hide == true {
                s5.isHidden = true
            }
        }
        
        self.s6 = self.childNode(withName: "//s6") as? SKSpriteNode
        if let s6 = self.s6 {
            s6.alpha = 0.0
            s6.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s6_hide == true {
                s6.isHidden = true
            }
        }
        
        self.s7 = self.childNode(withName: "//s7") as? SKSpriteNode
        if let s7 = self.s7 {
            s7.alpha = 0.0
            s7.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s7_hide == true {
                s7.isHidden = true
            }
        }
        
        self.s8 = self.childNode(withName: "//s8") as? SKSpriteNode
        if let s8 = self.s8 {
            s8.alpha = 0.0
            s8.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s8_hide == true {
                s8.isHidden = true
            }
        }
        
        self.s9 = self.childNode(withName: "//s9") as? SKSpriteNode
        if let s9 = self.s9 {
            s9.alpha = 0.0
            s9.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s9_hide == true {
                s9.isHidden = true
            }
        }
        
        self.s10 = self.childNode(withName: "//s10") as? SKSpriteNode
        if let s10 = self.s10 {
            s10.alpha = 0.0
            s10.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s10_hide == true {
                s10.isHidden = true
            }
        }
        
        self.s11 = self.childNode(withName: "//s11") as? SKSpriteNode
        if let s11 = self.s11 {
            s11.alpha = 0.0
            s11.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s11_hide == true {
                s11.isHidden = true
            }
        }
        
        self.s12 = self.childNode(withName: "//s12") as? SKSpriteNode
        if let s12 = self.s12 {
            s12.alpha = 0.0
            s12.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s12_hide == true {
                s12.isHidden = true
            }
        }
        
        self.s13 = self.childNode(withName: "//s13") as? SKSpriteNode
        if let s13 = self.s13 {
            s13.alpha = 0.0
            s13.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.s13_hide == true {
                s13.isHidden = true
            }
        }
        
        self.joker = self.childNode(withName: "//joker") as? SKSpriteNode
        if let joker = self.joker {
            joker.alpha = 0.0
            joker.run(SKAction.fadeIn(withDuration: 1.5))
            if cardselect1.joker_hide == true {
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
                    if cardselect1.s1_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber1 = 1
                        appdelegate.cardnumber1 = 1
                        let actionbig = SKAction.scale(to: 1.2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s1?.run(actionbig)
                        s1?.run(actionmove)
                        cardalpha(cardname: "s1")
                    }
                } else if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //2
                    if cardselect1.s2_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber1 = 2
                        appdelegate.cardnumber1 = 2
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s2?.run(actionbig)
                        s2?.run(actionmove)
                        cardalpha(cardname: "s2")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //3
                    if cardselect1.s3_hide == false {
                        label_action()
                        cardnumber1 = 3
                        appdelegate.cardnumber1 = 3
                        selectflag = true
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s3?.run(actionbig)
                        s3?.run(actionmove)
                        cardalpha(cardname: "s3")
                    }
                } else if tap_x >= 315 * appdelegate.scale && tap_x <= 385 * appdelegate.scale{
                    //4
                    if cardselect1.s4_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber1 = 4
                        appdelegate.cardnumber1 = 4
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s4?.run(actionbig)
                        s4?.run(actionmove)
                        cardalpha(cardname: "s4")
                    }
                }
            }
            //2段目
            if tap_y >= 230 * appdelegate.scale && tap_y <= 330 * appdelegate.scale {
                if tap_x >= 30 * appdelegate.scale && tap_x <= 100 * appdelegate.scale {
                    //5
                    if cardselect1.s5_hide == false{
                        label_action()
                        selectflag = true
                        cardnumber1 = 5
                        appdelegate.cardnumber1 = 5
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s5?.run(actionbig)
                        s5?.run(actionmove)
                        cardalpha(cardname: "s5")
                    }
                } else if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //6
                    if cardselect1.s6_hide == false{
                        label_action()
                        selectflag = true
                        cardnumber1 = 6
                        appdelegate.cardnumber1 = 6
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s6?.run(actionbig)
                        s6?.run(actionmove)
                        cardalpha(cardname: "s6")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //7
                    if cardselect1.s7_hide == false{
                        label_action()
                        selectflag = true
                        cardnumber1 = 7
                        appdelegate.cardnumber1 = 7
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s7?.run(actionbig)
                        s7?.run(actionmove)
                        cardalpha(cardname: "s7")
                    }
                } else if tap_x >= 315 * appdelegate.scale && tap_x <= 385 * appdelegate.scale {
                    //8
                    if cardselect1.s8_hide == false{
                        label_action()
                        selectflag = true
                        cardnumber1 = 8
                        appdelegate.cardnumber1 = 8
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s8?.run(actionbig)
                        s8?.run(actionmove)
                        cardalpha(cardname: "s8")
                    }
                }
            }
            //3段目
            if tap_y >= 380 * appdelegate.scale && tap_y <= 480 * appdelegate.scale {
                if tap_x >= 30 * appdelegate.scale && tap_x <= 100 * appdelegate.scale {
                    //9
                    if cardselect1.s9_hide == false{
                        label_action()
                        selectflag = true
                        cardnumber1 = 9
                        appdelegate.cardnumber1 = 9
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s9?.run(actionbig)
                        s9?.run(actionmove)
                        cardalpha(cardname: "s9")
                    }
                } else if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //10
                    if cardselect1.s10_hide == false{
                        label_action()
                        selectflag = true
                        cardnumber1 = 10
                        appdelegate.cardnumber1 = 10
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s10?.run(actionbig)
                        s10?.run(actionmove)
                        cardalpha(cardname: "s10")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //11
                    if cardselect1.s11_hide == false{
                        label_action()
                        selectflag = true
                        cardnumber1 = 11
                        appdelegate.cardnumber1 = 11
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s11?.run(actionbig)
                        s11?.run(actionmove)
                        cardalpha(cardname: "s11")
                    }
                } else if tap_x >= 315 * appdelegate.scale && tap_x <= 385 * appdelegate.scale {
                    //12
                    if cardselect1.s12_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber1 = 12
                        appdelegate.cardnumber1 = 12
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s12?.run(actionbig)
                        s12?.run(actionmove)
                        cardalpha(cardname: "s12")
                    }
                }
            }
            //4段目
            if tap_y >= 520 * appdelegate.scale && tap_y <= 620 * appdelegate.scale {
                if tap_x >= 125 * appdelegate.scale && tap_x <= 195 * appdelegate.scale {
                    //13
                    if cardselect1.s13_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber1 = 13
                        appdelegate.cardnumber1 = 13
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        s13?.run(actionbig)
                        s13?.run(actionmove)
                        cardalpha(cardname: "s13")
                    }
                } else if tap_x >= 220 * appdelegate.scale && tap_x <= 290 * appdelegate.scale {
                    //joker
                    if cardselect1.joker_hide == false {
                        label_action()
                        selectflag = true
                        cardnumber1 = 14
                        appdelegate.cardnumber1 = 14
                        let actionbig = SKAction.scale(to: 2, duration: 0.8)
                        let actionmove = SKAction.move(to: CGPoint(x:10,y:150), duration: 0.8)
                        joker?.run(actionbig)
                        joker?.run(actionmove)
                        cardalpha(cardname: "joker")
                    }
                }
            }
        } else if selectflag == true {
            if tap_y >= 435 * appdelegate.scale && tap_y <= 465 * appdelegate.scale {
                if tap_x >= 95 * appdelegate.scale && tap_x <= 185 * appdelegate.scale {
                    appdelegate.audioPlayerdecision?.play()
                    //selectしてyes
                    selectflag = false
                    switch cardnumber1 {
                    case 1:
                        cardselect1.s1_hide = true
                    case 2:
                        cardselect1.s2_hide = true
                    case 3:
                        cardselect1.s3_hide = true
                    case 4:
                        cardselect1.s4_hide = true
                    case 5:
                        cardselect1.s5_hide = true
                    case 6:
                        cardselect1.s6_hide = true
                    case 7:
                        cardselect1.s7_hide = true
                    case 8:
                        cardselect1.s8_hide = true
                    case 9:
                        cardselect1.s9_hide = true
                    case 10:
                        cardselect1.s10_hide = true
                    case 11:
                        cardselect1.s11_hide = true
                    case 12:
                        cardselect1.s12_hide = true
                    case 13:
                        cardselect1.s13_hide = true
                    case 14:
                        cardselect1.joker_hide = true
                    default:
                        print("error")
                    }
                    appdelegate.gamereset1 = false
                    let scene = Game_check2(fileNamed: "Game_check2")
                    scene?.scaleMode = SKSceneScaleMode.aspectFill
                    self.view!.presentScene(scene)
                } else if tap_x >= 285 * appdelegate.scale && tap_x <= 365 * appdelegate.scale {
                    appdelegate.audioPlayerdecision?.play()
                    //selectしてno
                    self.yes = self.childNode(withName: "//yes") as? SKLabelNode
                    self.yes?.isHidden = true
                    self.no = self.childNode(withName: "//no") as? SKLabelNode
                    self.no?.isHidden = true
                    self.or = self.childNode(withName: "//or") as? SKLabelNode
                    self.or?.isHidden = true
                    self.check = self.childNode(withName: "//check") as? SKLabelNode
                    self.check?.isHidden = true
                    selectflag = false
                    let scene = cardselect1(fileNamed: "cardselect1")
                    scene?.scaleMode = SKSceneScaleMode.aspectFill
                    self.view!.presentScene(scene)
                }
            }
        }
    }
    
    private func cardalpha(cardname : String){
        switch cardname {
        case "s1":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.01))
            s11?.run(SKAction.fadeOut(withDuration: 1.02))
            s12?.run(SKAction.fadeOut(withDuration: 1.03))
            s13?.run(SKAction.fadeOut(withDuration: 1.14))
            joker?.run(SKAction.fadeOut(withDuration: 1.15))
        case "s2":
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.1))
            s11?.run(SKAction.fadeOut(withDuration: 1.1))
            s12?.run(SKAction.fadeOut(withDuration: 1.11))
            s13?.run(SKAction.fadeOut(withDuration: 1.12))
            joker?.run(SKAction.fadeOut(withDuration: 1.14))
        case "s3":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.01))
            joker?.run(SKAction.fadeOut(withDuration: 1.02))
        case "s4":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.01))
            s12?.run(SKAction.fadeOut(withDuration: 1.02))
            s13?.run(SKAction.fadeOut(withDuration: 1.03))
            joker?.run(SKAction.fadeOut(withDuration: 1.04))
        case "s5":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "s6":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "s7":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "s8":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "s9":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.01))
        case "s10":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "s11":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "s12":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.0))
        case "s13":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
            joker?.run(SKAction.fadeOut(withDuration: 1.01))
        case "joker":
            s2?.run(SKAction.fadeOut(withDuration: 1.0))
            s3?.run(SKAction.fadeOut(withDuration: 1.0))
            s4?.run(SKAction.fadeOut(withDuration: 1.0))
            s5?.run(SKAction.fadeOut(withDuration: 1.0))
            s6?.run(SKAction.fadeOut(withDuration: 1.0))
            s7?.run(SKAction.fadeOut(withDuration: 1.0))
            s8?.run(SKAction.fadeOut(withDuration: 1.0))
            s9?.run(SKAction.fadeOut(withDuration: 1.0))
            s10?.run(SKAction.fadeOut(withDuration: 1.0))
            s11?.run(SKAction.fadeOut(withDuration: 1.0))
            s12?.run(SKAction.fadeOut(withDuration: 1.0))
            s13?.run(SKAction.fadeOut(withDuration: 1.01))
            s1?.run(SKAction.fadeOut(withDuration: 1.0))
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
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
