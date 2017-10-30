//
//  SelectPlayerView.swift
//  dive_destroy
//
//  Created by Tom van Duist on 30/10/2017.
//  Copyright © 2017 Tara Elsen. All rights reserved.
//

import UIKit

class SelectPlayerViewController: BaseViewController {
    
    @IBOutlet weak var textFieldPlayer1: UITextField!
    @IBOutlet weak var textFieldPlayer2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Setup"
    }
    
    func startGame() {
        
        if validate() {
            let viewController = GameViewController(nibName:"GameView", bundle:nil)
            
            pushViewController(viewController: viewController)
        }
    }
    
    func validate() -> Bool {
        let validator = PlayerNameValidator()
        
        guard let
            player1 = textFieldPlayer1.text,
            validator.validateName(name: player1)
            else { print("Player 1 name invalid"); return false } // TODO: show warning instead of throwing an exception
        
        guard let
            player2 = textFieldPlayer2.text,
            validator.validateName(name: player2)
            else { print("Player 2 name invalid"); return false } // TODO: show warning instead of throwing an exception
        
        return true
    }
    
}


// MARK: - IBActions

extension SelectPlayerViewController {
    
    @IBAction func startButtonPressed(_ sender: Any) {
        startGame()
    }
    
}


// MARK: - ValidationsNSLocalizedString("", comment: "")

class PlayerNameValidator {
    
    func validateName(name: String!) -> Bool {
        return !name.isEmpty && name.count >= 3
    }
    
}
