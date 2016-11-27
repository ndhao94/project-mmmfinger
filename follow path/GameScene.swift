//
//  GameScene.swift
//  follow path
//
//  Created by Admin on 11/26/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

import SpriteKit
import GameplayKit
class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        addBackground()
        let logo = SKSpriteNode(imageNamed: "enemy_plane_white_3")
        logo.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        self.addChild(logo)
        
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 50, y: 100))
        
        let followLine = SKAction.follow(path, asOffset: true, orientToPath: false, duration: 3)
        let reversedLine = followLine.reversed()
        
        let square = UIBezierPath(rect: CGRect.init(x: 0, y: 0, width: 100, height: 100))
        let followSquare = SKAction.follow(square.cgPath, asOffset: true, orientToPath: false, duration: 5)
        
        
        let circle = UIBezierPath(roundedRect: CGRect.init(x: 0, y: 0, width: 100, height: 100), cornerRadius: 100)
        
        let followCircle = SKAction.follow(circle.cgPath, asOffset: true, orientToPath: false, duration: 5)
        
        
        logo.run(SKAction.sequence([followLine, reversedLine, followSquare, followCircle]))
        
              }
    func addBackground(){
        let background = SKSpriteNode(imageNamed: "background")
        background.anchorPoint = CGPoint(x: 0, y: 0)
        background.position = CGPoint(x: 0, y: 0)
        self.addChild(background)

    }
    
    
    }
    
