//
//  DeleveryToAddressTableViewCell.swift
//  test_UI
//
//  Created by sang1 on 03/07/2021.
//


import UIKit

class DeleveryToAddressTableViewCell: UITableViewCell {
    let contentViewBounds : UIView = {
       let view = UIView()
        
        return view
    }()
    let storeImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "test_canxoa")
        
        return image
    }()
    let nameStoreLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
      
  
        return label
    }()
    let storeAddressLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "Địa chỉ: 459 Trường Chinh, P. 14, Quận Tân Bình, TP. Hồ Chí Minh"
      return label
    }()
    
    let phoneNumberLabel : UILabel = {
        let label = UILabel()
        label.text = "Số điện thoại: 1900 100 100"
      return label
    }()
 
static let identifier = "DeleveryToAddressTableViewCell"
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(contentViewBounds)
        contentViewBounds.addSubviews([storeImage,nameStoreLabel,storeAddressLabel,phoneNumberLabel])
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout(){
        
        
        print(contentView.frame.height)
        contentViewBounds.backgroundColor = .yellow
        contentViewBounds.snp.makeConstraints({(make) in
            make.edges.equalToSuperview()
        })
        
        storeImage.backgroundColor = .red
        storeImage.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(14)
            make.top.equalToSuperview().offset(20)
            let widthHeightAddressImage = UIScreen.main.bounds.height * 0.04444
            make.width.height.equalTo(widthHeightAddressImage)

        })
        nameStoreLabel.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(16)
            make.left.equalTo(storeImage.snp.right).offset(12)
        })
        storeAddressLabel.numberOfLines = 3
        storeAddressLabel.snp.makeConstraints({(make) in
            make.top.equalTo(nameStoreLabel.snp.bottom).offset(4)
            make.left.equalTo(nameStoreLabel)
            make.right.equalToSuperview().offset(-17)
        })
        
        phoneNumberLabel.snp.makeConstraints({(make) in
            make.top.equalTo(storeAddressLabel.snp.bottom).offset(4)
            make.left.equalTo(nameStoreLabel)

        })

}
    
}
