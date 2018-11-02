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
        self.nameTextField.attributedPlaceholder = NSAttributedString(string: "NOME", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        self.nameTextField.layer.borderWidth = 2
        self.nameTextField.layer.borderColor = UIColor.goldYellow().cgColor
        self.nameTextField.layer.cornerRadius = 5
        
        self.ageTextField.attributedPlaceholder = NSAttributedString(string: "IDADE", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        self.ageTextField.layer.borderWidth = 2
        self.ageTextField.layer.borderColor = UIColor.goldYellow().cgColor
        self.ageTextField.layer.cornerRadius = 5
        
        self.emailTextField.attributedPlaceholder = NSAttributedString(string: "E-MAIL", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        self.emailTextField.layer.borderWidth = 2
        self.emailTextField.layer.borderColor = UIColor.goldYellow().cgColor
        self.emailTextField.layer.cornerRadius = 5
        
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string: "SENHA", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        self.passwordTextField.layer.borderWidth = 2
        self.passwordTextField.layer.borderColor = UIColor.goldYellow().cgColor
        self.passwordTextField.layer.cornerRadius = 5
        
        self.password2TextField.attributedPlaceholder = NSAttributedString(string: "CONFIRMAR SENHA", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        self.password2TextField.layer.borderWidth = 2
        self.password2TextField.layer.borderColor = UIColor.goldYellow().cgColor
        self.password2TextField.layer.cornerRadius = 5
    }
    
    
    @IBAction func backButtonDidClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
