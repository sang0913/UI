//
//  ViewController.swift
//  test_UI
//
//  Created by sang1 on 02/07/2021.
//
import SnapKit
import UIKit
class ViewController: UIViewController {
 
    let checkBox2 = CheckBoxButton()
    let label2 = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
     
            
             label2.text = "pokadkansdlkasd"
             view.addSubview(label2)
             view.addSubview(checkBox2)
             let gesture2 = UITapGestureRecognizer(target: self, action: #selector(tapCheckBox2))
             checkBox2.addGestureRecognizer(gesture2)
        checkBox2.backgroundColor = .red
        checkBox2.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(300)
            make.left.equalToSuperview().offset(20)
            make.width.height.equalTo(30)
        })
        
        label2.snp.makeConstraints({(make) in
            make.top.equalTo(checkBox2)
            make.left.equalTo(checkBox2.snp.right).offset(10)
            
        })
    }
   
    @objc func tapCheckBox2(){
        checkBox2.toggle()
    }
    
}
