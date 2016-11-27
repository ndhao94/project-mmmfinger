//
//  EnemyController.swift
//  follow path
//
//  Created by Admin on 11/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

import SpriteKit

class Controller {
    
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
    
    func playSound(sound: SKAction){
        view.run(sound)
    }
    
    var size: CGSize{
        get{
            return self.view.size
        }
    }
    
    var width : CGFloat{
        get {
            return self.view.size.width
        }
    }
    
    var height : CGFloat{
        get{
            return self.view.size.height
        }
    }
    
    var position : CGPoint {
        get{
            return self.view.position
            
        }
    }
}
