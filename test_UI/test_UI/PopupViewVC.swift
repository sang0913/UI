//
//  PopupViewVC.swift
//  PopupViewSample
//
//  Created by nguyen.duc.huyb on 8/8/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class PopupViewVC: UIViewController {
    let nameLabel =  UILabel()
  
    let nameTextField = UITextField()
    let contentViewBounds = UIView()
    let button = UIButton()
    var  didSendData: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(contentViewBounds)
        contentViewBounds.addSubview(button)
        contentViewBounds.addSubview(nameLabel)
        contentViewBounds.addSubview(nameTextField)
        
        contentViewBounds.snp.makeConstraints({(make) in
            make.centerX.centerY.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(400)
            contentViewBounds.backgroundColor = .green
        })
        
        nameLabel.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(15)
            make.left.equalToSuperview().offset(24)
            nameLabel.backgroundColor = .red
            nameLabel.text = "ghi chu dat hang"
        })
        
        nameTextField.snp.makeConstraints({(make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(22)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(42)

            nameTextField.backgroundColor = .black
        })
//
        
        
        
        button.snp.makeConstraints({(make) in
            make.bottom.left.right.equalToSuperview()
            make.height.equalTo(30)
         
        })
        
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button.backgroundColor = .red
    }
    
    @objc func tapButton(){
        if let name = nameTextField.text {
             didSendData?(name)
        }
        dismiss(animated: true)
    }

}
