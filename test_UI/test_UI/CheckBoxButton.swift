//
//  CheckBoxButton.swift
//  test_UI
//
//  Created by sang1 on 05/07/2021.
//

import UIKit
class CheckBoxButton:UIView {
   var isChecked = false
    let imageView : UIImageView = {
       let image = UIImageView()
        image.isHidden = true
        image.contentMode = .scaleAspectFit
        image.image = UIImage(systemName: "checkmark")
        image.tintColor = .systemBlue
        return image
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
    }
    
    public func toggle(){
        self.isChecked = !isChecked
        imageView.isHidden = !isChecked
        if imageView.isHidden == false {
            print("checked")
            
        }
        else {
                print("uncheck")
        }
    }
}
