//
//  ProductViewController.swift
//  HanaGold
//
//  Created by sang1 on 17/06/2021.


import Foundation
import UIKit
import SnapKit
import Reusable
enum HeightCell: Int {
    case heightCellProduct78 = 78
    
}

class ProductViewController: BaseViewController,UITableViewDataSource,UITableViewDelegate {
    
    let arrTitle = ["Happy Stone1","Tượng Phong Thuỷ","Trang Sức","Cây Đá","Bình Hoa","Gỗ Dừa Mạ Vàng","Tranh Mạ Vàng","Sơn Mài","Ốp Lưng","Tượng Phật Ô Tô"]

    let arrContentImage = ["image_happystone","image_tuongphongthuy","image_trangsuc","image_cayda","image_binhhoa","image_goduamavang","image_tranhmavang","image_sonmai","image_oplung","image_tuongphat"]
    
    private let tableView:UITableView = {
        let table = UITableView()
        table.register(ProductCellTableViewCell.self, forCellReuseIdentifier: ProductCellTableViewCell.identifier)
        table.backgroundColor = .clear
        return table
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.setUpLeftNavTitle(title: "Sản phẩm")
        navigationItem.setUpRightNavItems(imageLeft: "ic_bell", imageRight: "ic_cart")
        setDefaultNavigationBackButton()
        ///back ground image
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg-product")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: Int(0.5))
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        view.addSubview(tableView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrContentImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductCellTableViewCell.identifier,for:indexPath) as? ProductCellTableViewCell
        cell?.backgroundColor = .clear
        cell?.selectionStyle = .none
        
        cell?.titleLabel.text = arrTitle[indexPath.row]
        cell?.discriptionTitleLabel.text = "20 sản phẩm"
        cell?.contentImage.image = UIImage(named: arrContentImage[indexPath.row])
        
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(HeightCell.heightCellProduct78.rawValue)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected cell at index \(indexPath.row)")
    }
    
}
