//
//  GameViewController.swift
//  dive_destroy
//
//  Created by Tom van Duist on 30/10/2017.
//  Copyright © 2017 Tara Elsen. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: BaseViewController {
    
    @IBOutlet weak var spriteView: GameFieldView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Game"
    }
    
}


// MARK: - Scene

extension GameViewController {
    
    func setupScene() {
        
    }
}
