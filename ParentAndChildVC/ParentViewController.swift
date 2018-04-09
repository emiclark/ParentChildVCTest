//
//  ViewController.swift
//  ParentAndChildVC
//
//  Created by Emiko Clark on 4/7/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        
        let childVC = UIViewController()
        setupChildvc(vc: childVC)

        self.addChildViewController(childVC)
        self.view.addSubview(childVC.view)
        childVC.didMove(toParentViewController: self)
    }
    
    func setupChildvc(vc: UIViewController) {
        vc.view.backgroundColor = .cyan
        
        // Setup constraints for layout
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        vc.view.frame = view.bounds
    }
}

