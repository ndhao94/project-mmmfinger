//
//  EnemyController.swift
//  follow path
//
//  Created by Admin on 11/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

import SpriteKit

class EnemyController {
    
    let view: View
    var parent: SKNode!
    
    init(view: View ) {
        self.view = view
    }
    
    func config(position: CGPoint, parent: SKNode) {
        self.view.position = position
        self.parent = parent
        parent.addChild(self.view)
    }
    
    
}
