//
//  BlueVC.swift
//  DelegateProtocolExample
//
//  Created by Sean Goldsborough on 9/12/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
import UIKit

class BlueVC: UIViewController, BlackVCDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //MARK: step 5 create a reference of Class B and bind them through the prepareforsegue method
        if let nav = segue.destination as? UINavigationController, let blackVC = nav.topViewController as? BlackVC {
            blackVC.delegate = self
        }
        
    }
    
    //MARK: step 6 finally use the method of the contract here
    func changeBackgroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
    
}
