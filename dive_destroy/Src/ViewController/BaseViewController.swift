//
//  BaseViewController.swift
//  dodgy
//
//  Created by Tara Elsen on 01/10/2017.
//  Copyright © 2017 Tara Elsen. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
}


// MARK: - ViewController actions

extension BaseViewController {
    
    func pushViewController(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func popViewController() {
        self.navigationController?.popViewController(animated: true)
    }
}
