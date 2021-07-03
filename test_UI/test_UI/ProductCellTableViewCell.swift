//
//  ProductCellTableViewCell.swift
//  HanaGold
//
//  Created by sang1 on 17/06/2021.
//
import Foundation
import UIKit
import  SnapKit
class ProductCellTableViewCell: UITableViewCell {
  
    let backGroundImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "rectagle_gradient")
        
        return image
    }()
    let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = PoppinFont.bold.of(size: 14)
  
        return label
    }()
    let discriptionTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = PoppinFont.regular.of(size: 14)
      return label
    }()
    
    let contentImage : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
      return image
    }()
 
static let identifier = "ProductCellTableViewCell"
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(backGroundImage)
        backGroundImage.addSubview(titleLabel)
        backGroundImage.addSubview(discriptionTitleLabel)
        backGroundImage.addSubview(contentImage)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout(){
        backGroundImage.snp.makeConstraints({(make) in
            make.top.equalTo(contentView).offset(3)
            make.bottom.equalTo(contentView).offset(-3)
            make.leading.equalTo(contentView).offset(24)
            make.trailing.equalTo(contentView).offset(-24)
        })
        titleLabel.snp.makeConstraints({(make) in
            make.top.equalTo(backGroundImage).offset(15)
            make.leading.equalTo(backGroundImage).offset(14)
            
        })
        discriptionTitleLabel.snp.makeConstraints({(make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalTo(titleLabel)
            
        })
        contentImage.snp.makeConstraints({(make) in
            make.right.equalTo(backGroundImage)
//            make.width.height.equalTo(HeightCell.heightCellProduct78.rawValue)

        })

}

}
