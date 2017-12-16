//
//  GameFieldView.swift
//  dive_destroy
//
//  Created by Tom van Duist on 16/12/2017.
//  Copyright © 2017 Tara Elsen. All rights reserved.
//

import SpriteKit

class GameFieldView : DDSKView {
    
    override func willMove(toSuperview newSuperview: UIView?) {
        let scene = GameFieldScene(size: bounds.size)
        
        presentScene(scene)
    }
}
