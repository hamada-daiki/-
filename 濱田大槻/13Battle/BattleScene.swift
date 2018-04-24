//
//  BattleScene.swift
//  13Battle
//
//  Created by Hamada on 2018/04/11.
//  Copyright © 2018年 Hamada. All rights reserved.
//

import GameKit
import SpriteKit
import SceneKit
import Foundation

class BattleScene : SKScene {
    private var winA : SKLabelNode?
    private var winB : SKLabelNode?
    private var loseA : SKLabelNode?
    private var loseB : SKLabelNode?
    private var draw : SKLabelNode?
    private var reverseA : SKSpriteNode?
    private var reverseB : SKSpriteNode?
    
    private var result : SKLabelNode?
    private var ext : SKLabelNode?
    
    private var s1 : SKSpriteNode?
    private var s2 : SKSpriteNode?
    private var s3 : SKSpriteNode?
    private var s4 : SKSpriteNode?
    private var s5 : SKSpriteNode?
    private var s6 : SKSpriteNode?
    private var s7 : SKSpriteNode?
    private var s8 : SKSpriteNode?
    private var s9 : SKSpriteNode?
    private var s10 : SKSpriteNode?
    private var s11 : SKSpriteNode?
    private var s12 : SKSpriteNode?
    private var s13 : SKSpriteNode?
    private var joker1 : SKSpriteNode?
    
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
    private var joker2 : SKSpriteNode?
    
    var audioPlayer : AVAudioPlayer?
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func didMove(to view: SKView) {
        UIApplication.shared.isIdleTimerDisabled = false
        appdelegate.audioPlayerselect?.stop()
        appdelegate.turn_count = appdelegate.turn_count + 1
        
        let wait = SKAction.wait(forDuration: 2.0)
        let hide = SKAction.hide()
        let unhide = SKAction.unhide()
        let card_action = SKAction.sequence([wait,hide])
        let label_action = SKAction.sequence([wait,unhide])
        
        let audioPath = Bundle.main.path(forResource: "drum", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            // audioError = error
            print(error)
            audioPlayer = nil
        }
        audioPlayer?.enableRate = true
        audioPlayer?.rate = 1.7
        audioPlayer?.play()
    
        if appdelegate.turn_count == 14 {
            self.ext = self.childNode(withName: "//next") as? SKLabelNode
            ext?.isHidden = true
            self.result = self.childNode(withName: "//result") as? SKLabelNode
            result?.isHidden = false
        }
        
        if (appdelegate.turn_count)! % 3 == 0 {
            
        } else {
            self.reverseA = self.childNode(withName: "//reverseA") as? SKSpriteNode
            reverseA?.run(card_action)
            self.reverseB = self.childNode(withName: "//reverseB") as? SKSpriteNode
            reverseB?.run(card_action)
        }
        
        let cardselect1 = UIApplication.shared.delegate as? AppDelegate
        let cardnumber1 = cardselect1?.cardnumber1
        //print(cardnumber1!)
        let cardselect2 = UIApplication.shared.delegate as? AppDelegate
        let cardnumber2 = cardselect2?.cardnumber2
        //print(cardnumber2!)
        let result_num = result(cardnumber1: cardnumber1!,cardnumber2: cardnumber2!)
        
        if result_num == 1 {
            self.winA = self.childNode(withName: "//winA") as? SKLabelNode
            self.loseB = self.childNode(withName: "//loseB") as? SKLabelNode
            winA?.run(label_action)
            loseB?.run(label_action)
        } else if result_num == 2 {
            self.winB = self.childNode(withName: "//winB") as? SKLabelNode
            self.loseA = self.childNode(withName: "//loseA") as? SKLabelNode
            winB?.run(label_action)
            loseA?.run(label_action)
        } else {
            self.draw = self.childNode(withName: "//draw") as? SKLabelNode
            draw?.run(label_action)
        }
        
        if (appdelegate.turn_count)! % 3 != 0 {
            switch cardnumber1 {
            case 1:
                self.s1 = self.childNode(withName: "//s1") as? SKSpriteNode
                s1?.run(label_action)
            case 2:
                self.s2 = self.childNode(withName: "//s2") as? SKSpriteNode
                s2?.run(label_action)
            case 3:
                self.s3 = self.childNode(withName: "//s3") as? SKSpriteNode
                s3?.run(label_action)
            case 4:
                self.s4 = self.childNode(withName: "//s4") as? SKSpriteNode
                s4?.run(label_action)
            case 5:
                self.s5 = self.childNode(withName: "//s5") as? SKSpriteNode
                s5?.run(label_action)
            case 6:
                self.s6 = self.childNode(withName: "//s6") as? SKSpriteNode
                s6?.run(label_action)
            case 7:
                self.s7 = self.childNode(withName: "//s7") as? SKSpriteNode
                s7?.run(label_action)
            case 8:
                self.s8 = self.childNode(withName: "//s8") as? SKSpriteNode
                s8?.run(label_action)
            case 9:
                self.s9 = self.childNode(withName: "//s9") as? SKSpriteNode
                s9?.run(label_action)
            case 10:
                self.s10 = self.childNode(withName: "//s10") as? SKSpriteNode
                s10?.run(label_action)
            case 11:
                self.s11 = self.childNode(withName: "//s11") as? SKSpriteNode
                s11?.run(label_action)
            case 12:
                self.s12 = self.childNode(withName: "//s12") as? SKSpriteNode
                s12?.run(label_action)
            case 13:
                self.s13 = self.childNode(withName: "//s13") as? SKSpriteNode
                s13?.run(label_action)
            case 14:
                self.joker1 = self.childNode(withName: "//joker1") as? SKSpriteNode
                joker1?.run(label_action)
            default:
                print("error")
            }
            switch cardnumber2 {
            case 1:
                self.h1 = self.childNode(withName: "//h1") as? SKSpriteNode
                h1?.run(label_action)
            case 2:
                self.h2 = self.childNode(withName: "//h2") as? SKSpriteNode
                h2?.run(label_action)
            case 3:
                self.h3 = self.childNode(withName: "//h3") as? SKSpriteNode
                h3?.run(label_action)
            case 4:
                self.h4 = self.childNode(withName: "//h4") as? SKSpriteNode
                h4?.run(label_action)
            case 5:
                self.h5 = self.childNode(withName: "//h5") as? SKSpriteNode
                h5?.run(label_action)
            case 6:
                self.h6 = self.childNode(withName: "//h6") as? SKSpriteNode
                h6?.run(label_action)
            case 7:
                self.h7 = self.childNode(withName: "//h7") as? SKSpriteNode
                h7?.run(label_action)
            case 8:
                self.h8 = self.childNode(withName: "//h8") as? SKSpriteNode
                h8?.run(label_action)
            case 9:
                self.h9 = self.childNode(withName: "//h9") as? SKSpriteNode
                h9?.run(label_action)
            case 10:
                self.h10 = self.childNode(withName: "//h10") as? SKSpriteNode
                h10?.run(label_action)
            case 11:
                self.h11 = self.childNode(withName: "//h11") as? SKSpriteNode
                h11?.run(label_action)
            case 12:
                self.h12 = self.childNode(withName: "//h12") as? SKSpriteNode
                h12?.run(label_action)
            case 13:
                self.h13 = self.childNode(withName: "//h13") as? SKSpriteNode
                h13?.run(label_action)
            case 14:
                self.joker2 = self.childNode(withName: "//joker2") as? SKSpriteNode
                joker2?.run(label_action)
            default:
                print("error")
            }
        }
    }
    
    func result(cardnumber1 : Int, cardnumber2 : Int) -> Int {
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        var ans : Int = 0 //1:player1,2:player2,3:draw
        var getp : Int = 0 //pointの獲得値
        
        if cardnumber1 == 14 || cardnumber2 == 14 {
            //どちらかがjokerの場合
            if cardnumber1 == 14  && cardnumber2 != 14{
                //player1がjokerの場合
                if cardnumber2 == 1 || cardnumber2 == 3{
                    //player2が1,3のどちらかの場合はplayer2の勝利
                    ans = 2
                    getp = 3
                } else {
                    //player2が1,3以外ならplayer1の勝利
                    ans = 1
                    getp = 1
                }
            } else if cardnumber1 != 14 && cardnumber2 == 14{
                //player2がjokerの場合
                if cardnumber1 == 1 || cardnumber1 == 3{
                    //player1が1,3のどちらかの場合はplayer1の勝利
                    ans = 1
                    getp = 3
                } else {
                    //player1が1,3以外ならplayer2の勝利
                    ans = 2
                    getp = 1
                }
            } else {
                //両者jokerの場合
                ans = 3
                getp = 0
            }
            
        } else {
            //joker以外の場合
            if abs(cardnumber1 - cardnumber2) == 1 {
                //カードの差が1の場合
                if cardnumber1 > cardnumber2 {
                    //差が1でplayer1の勝利
                    ans = 1
                    getp = 2
                } else {
                    //差が1でplayer2の勝利
                    ans = 2
                    getp = 2
                }
            } else if abs(cardnumber1 - cardnumber2) == 0 {
                //drawの場合
                ans = 3
                getp = 0
            } else {
                //カードの差が2以上の場合
                if cardnumber1 > cardnumber2 {
                    //player1の勝利
                    ans = 1
                    getp = 1
                } else {
                    //player2の勝利
                    ans = 2
                    getp = 1
                }
            }
        }
        
        if ans == 1{
            appdelegate?.sum1 = (appdelegate?.sum1)! + getp
            let sum1 = appdelegate?.sum1
            print(sum1!)
        } else if ans == 2 {
            appdelegate?.sum2 = (appdelegate?.sum2)! + getp
            print(appdelegate?.sum2 as Any)
        }
        return ans
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        // タップした座標を取得する
        var tapLocation:CGPoint = CGPoint()
        tapLocation = touch!.location(in: self.view)
        //x,y座標(タッチ時)
        let tap_x = tapLocation.x
        let tap_y = tapLocation.y
//        print(tap_x)
//        print(tap_y)
//        print()
        if tap_y >= 670 * appdelegate.scale && tap_y <= 715 * appdelegate.scale{
            if tap_x >= 15 && tap_x <= 140{
                //home
                appdelegate.audioPlayerdecision?.play()
                let scene = GameScene(fileNamed: "GameScene")
                scene?.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(scene)
            } else if tap_x >= 270 * appdelegate.scale && tap_x <= 400 * appdelegate.scale {
                appdelegate.audioPlayerdecision?.play()
                //next or result
                if appdelegate.turn_count == 14 {
                    let scene = ResultScene(fileNamed: "ResultScene")
                    scene?.scaleMode = SKSceneScaleMode.aspectFill
                    self.view!.presentScene(scene)
                } else {
                    let scene = Game_check1(fileNamed: "Game_check1")
                    scene?.scaleMode = SKSceneScaleMode.aspectFill
                    self.view!.presentScene(scene)
                }
            }
        }
    }
    
}
