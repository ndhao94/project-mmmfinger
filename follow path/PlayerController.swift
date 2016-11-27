//
//  PlayerController.swift
//  follow path
//
//  Created by Admin on 11/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

import SpriteKit

class PlayerController: Controller  {
    
    static let instance = PlayerController()
    
    init() {
        super.init(view: View(texture: PLAYER_TEXTURE))
    }
    
    override func config(position: CGPoint, parent: SKNode) {
        super.config(position: position, parent: parent)
        self.configContraints()
        self.configPhysics()
    }
    
    func configPhysics(){
        view.name = "player"
        view.physicsBody = SKPhysicsBody(texture: PLAYER_TEXTURE, size: view.size)
        view.physicsBody?.categoryBitMask = PLAYER_MASK
        view.physicsBody?.contactTestBitMask = ENEMY_MASK
        view.physicsBody?.collisionBitMask = 0
        
        view.handleContact = {
            otherView in
            otherView.removeFromParent()
        }
    }
    
    func configContraints(){
        let xRange = SKRange(lowerLimit: 0, upperLimit: parent.frame.width)
        let yRange = SKRange(lowerLimit: 0, upperLimit: parent.frame.height)
        view.constraints = [SKConstraint.positionX(xRange, y: yRange)]
    }
    
    func move(vector: CGVector){
        view.position = view.position.add(vector: vector)
    }
    
}
