//
//  PartyListHeader.swift
//  Feeling
//
//  Created by Douglas Schiavi on 16/09/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

class PartyListHeader: UITableViewHeaderFooterView{
    
    @IBOutlet weak var partyImage: UIImageView!
    @IBOutlet weak var partyNameLabel: UILabel!
    @IBOutlet weak var partyDate: UILabel!
    @IBOutlet weak var partyTime: UILabel!
    
    
    func setupPartyDetails(partyImage: UIImage?, partyNameLabel: String, date: Date){
        self.partyImage.image = partyImage
        self.partyNameLabel.text = partyNameLabel
        
        //Fix date/time details and set it to date/timeLabel
        
    }
    
}
