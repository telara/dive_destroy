//
//  GameFieldScene.swift
//  dive_destroy
//
//  Created by Tom van Duist on 16/12/2017.
//  Copyright © 2017 Tara Elsen. All rights reserved.
//

import SpriteKit

class GameFieldScene : DDSKScene {
    
    let GAME_SIZE: NSInteger = 9
    
    // Game layers
    let backgroundNode = DDSKNode()
    let gameFieldNode = DDSKNode()
    let tilesNode = DDSKNode()
    
    // Tiles
    var tiles = [[GameFieldTile]]()
    
    override func didMove(to view: SKView) {
        setupScene()
    }
    
    func setupScene() {
        self.addChild(backgroundNode)
        self.addChild(gameFieldNode)
        gameFieldNode.addChild(tilesNode)
        
        setupTiles()
    }
    
    func setupTiles() {
        let tileSize = Int(self.size.width / CGFloat(GAME_SIZE))
        
        for x in 0...(GAME_SIZE-1) {
            
            tiles.append([GameFieldTile]())
            
            for y in 0...(GAME_SIZE-1) {
                
                let tile = GameFieldTile()
                
                tile.position = CGPoint(x: x * tileSize, y: y * tileSize)
                
                
                tiles[x].append(tile)
            }
        }
    }
}


// MARK: - User Interactions

extension GameFieldScene {
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else {
            return
        }
        
    }
}
