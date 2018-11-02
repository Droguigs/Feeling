//
//  CreatePartyViewController.swift
//  Feeling
//
//  Created by Douglas Schiavi on 29/08/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

class CreatePartyViewController: UIViewController {

    @IBOutlet weak var cpfText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var placeText: UITextField!
    @IBOutlet weak var valueText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupButtons()
    }

    func setupButtons(){
        nameText.attributedPlaceholder = NSAttributedString(string: "NOME", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        nameText.layer.borderWidth = 2
        nameText.layer.borderColor = UIColor.goldYellow().cgColor
        nameText.layer.cornerRadius = 5
        
        cpfText.attributedPlaceholder = NSAttributedString(string: "CPF/CNPJ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        cpfText.layer.borderWidth = 2
        cpfText.layer.borderColor = UIColor.goldYellow().cgColor
        cpfText.layer.cornerRadius = 5
        
        placeText.attributedPlaceholder = NSAttributedString(string: "LOCAL/HORÁRIO", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        placeText.layer.borderWidth = 2
        placeText.layer.borderColor = UIColor.goldYellow().cgColor
        placeText.layer.cornerRadius = 5
        
        valueText.attributedPlaceholder = NSAttributedString(string: "VALORES (ÁREAS)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.goldYellow()])
        valueText.layer.borderWidth = 2
        valueText.layer.borderColor = UIColor.goldYellow().cgColor
        valueText.layer.cornerRadius = 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
