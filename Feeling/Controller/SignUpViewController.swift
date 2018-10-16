//
//  SignUpViewController.swift
//  Feeling
//
//  Created by Douglas Schiavi on 19/08/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    func setupButtons(){
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.goldYellow().cgColor
        nameTextField.layer.cornerRadius = 5
        
        ageTextField.layer.borderWidth = 2
        ageTextField.layer.borderColor = UIColor.goldYellow().cgColor
        ageTextField.layer.cornerRadius = 5
        
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.goldYellow().cgColor
        emailTextField.layer.cornerRadius = 5
        
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.goldYellow().cgColor
        passwordTextField.layer.cornerRadius = 5
        
        password2TextField.layer.borderWidth = 2
        password2TextField.layer.borderColor = UIColor.goldYellow().cgColor
        password2TextField.layer.cornerRadius = 5
    }
    
    
    @IBAction func backButtonDidClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
