//
//  PinkVC.swift
//  DelegateProtocolExample
//
//  Created by Sean Goldsborough on 9/12/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
import UIKit

class PinkVC: UIViewController {
    
    
    @IBAction  func dismissPink() {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       stuff()
    }

    
    
    func stuff() {
        print("stuff stuff")
    }
}
