//
//  RootViewController.swift
//  dodgy
//
//  Created by Tara Elsen on 01/10/2017.
//  Copyright © 2017 Tara Elsen. All rights reserved.
//

import UIKit

class RootViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Dive & Destroy"
    }
    
}


// MARK: - IBActions

extension RootViewController {
    
    @IBAction func pressedStartButton(_ sender: UIButton) {
        let viewController = SelectPlayerViewController(nibName:"SelectPlayerView", bundle:nil)
        
        pushViewController(viewController: viewController)
    }
    
}
