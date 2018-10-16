//
//  UIColor+Pallete.swift
//  Feeling
//
//  Created by Douglas Schiavi on 11/09/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: String) {
        let h = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: h).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch h.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
    
    static func goldYellow() -> UIColor {
        return UIColor(hex: "FFC300")
    }
    
    static func royalBlue() -> UIColor {
        return UIColor(hex: "#4169E1")
    }
    
    static func slateBlue() -> UIColor {
        return UIColor(hex: "#6A5ACD")
    }
    
    static func navy() -> UIColor {
        return UIColor(hex: "#000080")
    }
    
    static func darkCyan() -> UIColor {
        return UIColor(hex: "#008B8B")
    }
    
    static func turquoise() -> UIColor {
        return UIColor(hex: "#40E0D0")
    }
    
    static func turquoiseDark() -> UIColor {
        return UIColor(hex: "#00CED1")
    }
    
    static func mediumSpringGreen() -> UIColor {
        return UIColor(hex: "#00FA9A")
    }
    
    static func darkGreen() -> UIColor {
        return UIColor(hex: "#006400")
    }
    
    static func oliveBrad() -> UIColor {
        return UIColor(hex: "#6B8E23")
    }
    
    static func chartreuse() -> UIColor {
        return UIColor(hex: "#79f300")
    }
    
    static func greenYellow() -> UIColor {
        return UIColor(hex: "#ADFF2F")
    }
    
    static func goldenrod() -> UIColor {
        return UIColor(hex: "#DAA520")
    }
    
    static func gold() -> UIColor {
        return UIColor(hex: "#FFD700")
    }
    
    static func darkRed() -> UIColor {
        return UIColor(hex: "#8B0000")
    }
    
    static func purple() -> UIColor {
        return UIColor(hex: "#800080")
    }
    
    static func magenta() -> UIColor {
        return UIColor(hex: "#FF00FF")
    }
    
    static func orangeRed() -> UIColor {
        return UIColor(hex: "#FF4500")
    }
    
    static func salmon() -> UIColor {
        return UIColor(hex: "#FF4500")
    }
    
    static func coral() -> UIColor {
        return UIColor(hex: "#FF7F50")
    }
    
    static func crimson() -> UIColor {
        return UIColor(hex: "#d73959")
    }
}
