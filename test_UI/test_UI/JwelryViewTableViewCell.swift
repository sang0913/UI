//
//  JwelryViewTableViewCell.swift
//  HanaGold
//
//  Created by sang1 on 18/06/2021.
//

import UIKit

class JwelryViewTableViewCell: UITableViewCell {
static let identifier = "JwelryViewTableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        // Configure the view for the selected state
    }

}
//extension UIColor {
//    
//    convenience init(hex:Int, alpha:CGFloat = 1.0) {
//        self.init(
//            red:   CGFloat((hex & 0xFF0000) >> 16) / 255.0,
//            green: CGFloat((hex & 0x00FF00) >> 8)  / 255.0,
//            blue:  CGFloat((hex & 0x0000FF) >> 0)  / 255.0,
//            alpha: alpha
//        )
//    }
//    
//}

