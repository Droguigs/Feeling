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
    
    @IBOutlet weak var descriptionConstraint: NSLayoutConstraint!
    
    var totalHeight: CGFloat = 100
    
    let dayFormatter = DateFormatter()
    let timeFormatter = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        dayFormatter.dateFormat = "dd/MM/YYYY"
        timeFormatter.dateFormat = "hh:mm"
        
        _ = reloadComponentsSize()
    }
    
    func setupPartyDetails(partyImage: UIImage?, partyNameLabel: String, date: Date){
        self.partyImage.image = partyImage
        self.partyNameLabel.text = partyNameLabel
        
        //Fix date/time details and set it to date/timeLabel
        partyDay.text = "DIA - " + dayFormatter.string(from: date)
        partyTime.text = "HORA - " + timeFormatter.string(from: date)
        
    }
    
    func reloadComponentsSize() -> CGFloat {
        let fixedWidth = partyDescriptionText.frame.size.width
        let newSize = partyDescriptionText.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        partyDescriptionText.frame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        
        self.totalHeight = 176 + newSize.height
        
        descriptionConstraint.constant = newSize.height
        
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
