//
//  PartyListViewController.swift
//  Feeling
//
//  Created by Douglas Schiavi on 29/08/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

class PartyListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cell: PartyListCellViewController?
    
    override func viewDidLoad() {
        loadNibs()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func loadNibs(){
        tableView.register(PartyListCellViewController.nib, forCellReuseIdentifier: PartyListCellViewController.identifier)
    }
    
    
}

extension PartyListViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        cell = tableView.dequeueReusableCell(withIdentifier: PartyListCellViewController.identifier, for: indexPath) as? PartyListCellViewController
        cell?.layer.backgroundColor = UIColor.clear.cgColor
        cell?.setupPartyDetails(partyImage: UIImage(named: "Doggo"), partyNameLabel: "Patati Patata Night Fever" , date: Date())
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}

class Party {
    
    let partyName: String
    let date: Date
    let description: String
    let partyPicture: UIImage
    
    init(partyName: String, date: Date, description: String, partyPicture: UIImage){
        self.partyName = partyName
        self.date = date
        self.description = description
        self.partyPicture = partyPicture
    }
    
    
    
}
