//
//  CollapsibleTableViewCell2.swift
//  HanaGold
//
//  Created by sang1 on 03/07/2021.
//



import UIKit
class DeliveryToAddressTableView: UITableViewCell {
   let fixedHeightCollapsedTableViewLable = UILabel()
     let tableView = UITableView()
    let titleCollectionLabel = UILabel()
    let valueCollectionLabel = UILabel()
 
    let titleWeightOfGoldLabel = UILabel()
    let valueWeightOfGoldLabel = UILabel()
 
    let titleMaterialLabel = UILabel()
    let valueMaterialLabel = UILabel()
   
    let titleColorOfMaterialLabel = UILabel()
    let valueColorOfMaterialLabel = UILabel()
    
    let titleMainStoneLabel = UILabel()
    let valueMainStoneLabel = UILabel()
   
    let titleShapeOfStoneLabel = UILabel()
    let valueShapeOfStoneLabel = UILabel()
    
    let titleSideStoneLabel = UILabel()
    let valueSideStoneLabel = UILabel()
    
    let titleAgeOfGoldLabel = UILabel()
    let valueAgeOfGoldLabel = UILabel()
    
    let titlePurityLabel = UILabel()
    let valuePurityLabel = UILabel()
    
    let titleGenderLabel = UILabel()
    let valueGenderLabel = UILabel()
    let view2 = UIView()
    // MARK: Initalizers
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
      
        layoutComponenst()
  
        setupComponents()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        tableView.register(DeliveryToAddressTableView.self,forCellReuseIdentifier: "DeliveryToAddressTableView")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func initTableView() {
       
    }
    
   
    func layoutComponenst(){
        contentView.addSubviews([titleCollectionLabel,fixedHeightCollapsedTableViewLable,valueCollectionLabel,titleWeightOfGoldLabel,valueWeightOfGoldLabel,titleMaterialLabel,valueMaterialLabel,titleColorOfMaterialLabel,valueColorOfMaterialLabel,titleMainStoneLabel,valueMainStoneLabel,titleShapeOfStoneLabel,valueShapeOfStoneLabel,titleSideStoneLabel,valueSideStoneLabel,titleAgeOfGoldLabel,valueAgeOfGoldLabel,titlePurityLabel,valuePurityLabel,titleGenderLabel,valueGenderLabel,tableView])
          
        fixedHeightCollapsedTableViewLable.textColor = UIColor.lightGray
          
        
        contentView.backgroundColor = .clear
    
        
    }
    func setupComponents(){
        
        ///this label fix height collapsed tableView(don't delete it)
        titleCollectionLabel.snp.makeConstraints({(make) in
        make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            
        })
        
       
        tableView.backgroundColor = .gray
        tableView.snp.makeConstraints({(make) in
        make.top.equalTo(titleCollectionLabel.snp.bottom)
            make.top.equalToSuperview().offset(15)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalTo(fixedHeightCollapsedTableViewLable.snp.top).offset(-14)
            
        })
     
        ///this label fix height collapsed tableView(don't delete it)
        fixedHeightCollapsedTableViewLable.snp.makeConstraints({(make) in
            make.leading.equalTo(contentView.snp.leading).offset(26)

            make.trailing.equalTo(contentView.snp.trailing).offset(-26)
            make.bottom.equalTo(contentView.snp.bottom)
            make.top.equalTo(titleCollectionLabel).offset(300)
            make.height.equalTo(1)
        })
      
    
     
       
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
extension DeliveryToAddressTableView:UITableViewDataSource ,UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeleveryToAddressTableViewCell",for: indexPath) as? DeleveryToAddressTableViewCell
        
        cell?.backgroundColor = .red
        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.size.height / 3
    }
}
