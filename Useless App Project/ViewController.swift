//
//  ViewController.swift
//  Useless App Project
//
//  Created by New User on 11/13/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet weak var passwordTextField: ShakingTextField!
  @IBOutlet weak var WillAvatar: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    passwordTextField.delegate = self
    
WillAvatar.isUserInteractionEnabled = true
    
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
    tapGestureRecognizer.numberOfTapsRequired = 1
    WillAvatar.addGestureRecognizer(tapGestureRecognizer)
  
    
  }
  
  func addPulse(){
    let pulse = pulsing(numberOfPulses: 1, radius: 110, position: WillAvatar.center)
    pulse.animationDuration = 0.8
    pulse.backgroundColor = UIColor.blue.cgColor
    
    self.view.layer.insertSublayer(pulse, below: WillAvatar.layer)
    
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    passwordTextField.shake()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

