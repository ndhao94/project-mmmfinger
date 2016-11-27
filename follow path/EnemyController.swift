//
//  EnemyController.swift
//  follow path
//
//  Created by Admin on 11/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

import SpriteKit

class EnemyController: Controller {
    let SPEED: CGFloat = 50
    
    init(){
        super.init(view: View(texture: SMALL_ENEMY_TEXTURE))
        configPhysics() 
      
    }
    
    override func config(position: CGPoint, parent: SKNode) {
        super.config(position: position, parent: parent)
        configMove()
//        configFollowPath()
    }
    
    func configPhysics() {
        view.name = "enemy"
        view.physicsBody = SKPhysicsBody(texture: SMALL_ENEMY_TEXTURE, size: view.size)
        view.physicsBody?.categoryBitMask = ENEMY_MASK
        view.physicsBody?.categoryBitMask = PLAYER_MASK
        view.physicsBody?.collisionBitMask = 0
        
        view.handleContact = {
            otherView in
            print("contacted")
            otherView.removeFromParent()
        }
    }
    
    func configMove(){
        let moveToBottomAction = SKAction.moveToBottom(position: self.position, speed: SPEED)
        self.view.run(SKAction.sequence([moveToBottomAction, SKAction.removeFromParent()]))
        let circle = UIBezierPath(roundedRect: CGRect.init(x: 0, y: 0, width: 100, height: 100), cornerRadius: 100)
        let followCircle = SKAction.follow(circle.cgPath, asOffset: true, orientToPath: false, duration: 5)
        view.run(SKAction.repeatForever(followCircle))
    }
    
    
    
}
