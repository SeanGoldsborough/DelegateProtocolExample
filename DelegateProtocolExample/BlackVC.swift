//
//  BlackVC.swift
//  DelegateProtocolExample
//
//  Created by Sean Goldsborough on 9/12/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
import UIKit

class BlackVC: UIViewController {
    //MARK: step 1 Add Protocol here
    


        @IBOutlet weak var firstView: UIView!
        @IBOutlet weak var secondView: UIView!
        //MARK: step 2 Create a delegate property here, don't forget to make it weak!
    
        weak var delegate: BlackVCDelegate?
    
        override func viewDidLoad() {
            super.viewDidLoad()
            firstView.backgroundColor = .cyan
            firstView.layer.borderColor = UIColor.white.cgColor
            firstView.layer.borderWidth = 2.0
            firstView.layer.cornerRadius = firstView.frame.width / 2
            firstView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
            secondView.backgroundColor = .brown
            secondView.layer.borderColor = UIColor.white.cgColor
            secondView.layer.borderWidth = 2.0
            secondView.layer.cornerRadius = secondView.frame.width / 2
            secondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
            
        }
        @IBAction func dismissView(_ sender: UIBarButtonItem) {
            navigationController?.dismiss(animated: true)
        }
        
    @objc func handleTap(_ tapGesture: UITapGestureRecognizer) {
            
            view.backgroundColor = tapGesture.view?.backgroundColor
            //MARK: step 3 Add the delegate method call here
            delegate?.changeBackgroundColor(tapGesture.view?.backgroundColor)
        
        }
    
    
}

protocol BlackVCDelegate: class  {
    func changeBackgroundColor(_ color: UIColor?)
}
