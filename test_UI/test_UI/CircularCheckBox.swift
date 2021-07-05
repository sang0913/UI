//
//  CircularCheckBox.swift
//  test_UI
//
//  Created by sang1 on 05/07/2021.
//

import UIKit
final class CircularCheckBox:UIView {
    private var isChecked = false
    override init(frame:CGRect) {
        super.init(frame: frame)
    
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.label.cgColor
        layer.cornerRadius = frame.size.width/2
        backgroundColor = .systemBackground
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func tonggle() {
        self.isChecked = !isChecked
        
        if self.isChecked {
            backgroundColor = .systemBlue
            print("checked")
        }
        else {
            backgroundColor = .systemBackground
            print("doesn't check")
        }
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        layer.borderColor = UIColor.label.cgColor
    }
}
