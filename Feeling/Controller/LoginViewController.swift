//
//  LoginViewController.swift
//  Feeling
//
//  Created by Douglas Schiavi on 26/08/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.goldYellow().cgColor
        emailTextField.layer.cornerRadius = 5
        
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.goldYellow().cgColor
        passwordTextField.layer.cornerRadius = 5
        
        
    }
    
    override func didReceiveMemoryWarning() { }
    
    
    
}
