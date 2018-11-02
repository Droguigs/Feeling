//
//  LoginViewController.swift
//  Feeling
//
//  Created by Douglas Schiavi on 26/08/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit
import EZForm

class LoginViewController: UIViewController, EZFormDelegate {
    
    private var formManager: EZForm!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        setupTextFields()
        initializeForm()
    }
    
    override func didReceiveMemoryWarning() { }
    
    private func setupTextFields(){
        self.emailTextField.attributedPlaceholder = NSAttributedString(string: "E-MAIL", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.goldYellow().cgColor
        emailTextField.layer.cornerRadius = 5
        
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string: "SENHA", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.goldYellow().cgColor
        passwordTextField.layer.cornerRadius = 5
    }
    
    private func initializeForm() {
        formManager = EZForm()
        formManager.inputAccessoryType = EZFormInputAccessoryTypeStandard
        formManager.delegate = self
        formManager.inputAccessoryViewBarTintColor = UIColor.white
        formManager.autoScrollView(forKeyboardInput: self.emailTextField.superview)
        formManager.autoScrollForKeyboardInputPaddingSize = CGSize(width: 0, height: 0)
        
        let text1 = EZFormTextField()
        formManager.add(text1)
        text1.use(self.emailTextField)
        
        let text2 = EZFormTextField()
        formManager.add(text2)
        text2.use(self.passwordTextField)
        
    }
    
}
