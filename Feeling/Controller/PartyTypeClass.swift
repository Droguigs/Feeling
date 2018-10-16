//
//  PartyTypeClass.swift
//  Feeling
//
//  Created by Douglas Schiavi on 16/09/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

class PartyTypeClass{
    
    let partyImage: UIImage
    let partyName: String
    let date: Date
    let partyDescription: String
    
    init(partyImage: UIImage, partyName: String, date: Date, partyDescription: String){
        self.partyImage = partyImage
        self.partyName = partyName
        self.date = date
        self.partyDescription = partyDescription
    }
    
}
