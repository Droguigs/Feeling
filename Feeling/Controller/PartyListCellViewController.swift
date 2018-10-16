//
//  PartyListCellViewController.swift
//  Feeling
//
//  Created by Douglas Schiavi on 10/09/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

class PartyListCellViewController: UITableViewCell{
    
    @IBOutlet weak var partyImage: UIImageView!
    @IBOutlet weak var partyNameLabel: UILabel!
    @IBOutlet weak var partyDay: UILabel!
    @IBOutlet weak var partyTime: UILabel!
    @IBOutlet weak var partyDescriptionText: UITextView!
    
    var totalHeight: CGFloat = 100
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let fixedWidth = partyDescriptionText.frame.size.width
        let newSize = partyDescriptionText.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        partyDescriptionText.frame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        
        self.totalHeight = 160 + newSize.height
    }
    
    func setupPartyDetails(partyImage: UIImage?, partyNameLabel: String, date: Date){
        self.partyImage.image = partyImage
        self.partyNameLabel.text = partyNameLabel
        
        //Fix date/time details and set it to date/timeLabel
        
    }
    
    func reloadComponentsSize() -> CGFloat {
        let fixedWidth = partyDescriptionText.frame.size.width
        let newSize = partyDescriptionText.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        partyDescriptionText.frame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        
        self.totalHeight = 160 + newSize.height
        
        return totalHeight
    }
    
    func addBorders(){
        self.addBorderLeft(size: 2, color: UIColor.goldYellow())
        self.addBorderRight(size: 2, color: UIColor.goldYellow())
        self.addBorderBottom(size: 2, color: UIColor.goldYellow())
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) { }
    
    @IBAction func buyButtonDidClick(_ sender: UIButton) {
        
    }
    
}
