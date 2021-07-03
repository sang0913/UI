//
//  Header.swift
//  test_UI
//
//  Created by sang1 on 02/07/2021.
//
import SnapKit
import UIKit
protocol AddressCollapsibleTableViewHeaderDelegate {
    func toggleSection(_ header: AddressColapsedTableViewHeader, section: Int)
}
class AddressColapsedTableViewHeader: UITableViewHeaderFooterView {
    
    var delegate: AddressCollapsibleTableViewHeaderDelegate?
    var section: Int = 0
    let contentViewBounds = UIView()
    let titleLabel = UILabel()
    let statusClickImage = UIImageView()
    let lineView = UIView()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.addSubview(contentViewBounds)
        contentViewBounds.addSubviews([titleLabel,statusClickImage,])
        setupLayoutHeaderProperties()
        layoutComponents ()
        // Title label
        // Call tapHeader when tapping on this header
      
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(AddressColapsedTableViewHeader.tapHeader(_:))))
        contentView.backgroundColor = .black
        
    }
    
    
    func layoutComponents (){
        contentViewBounds.snp.makeConstraints({(make) in
            make.top.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
          
          
        })
       statusClickImage.snp.makeConstraints({(make) in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.width.height.equalTo(10)
            statusClickImage.backgroundColor = .yellow
        })
        
        titleLabel.snp.makeConstraints({(make) in
            make.left.equalTo(statusClickImage.snp.right).offset(16)
            make.centerY.equalToSuperview()
        })
    }
    func setupLayoutHeaderProperties(){
 
        ///UI properties
        ///views bounds 
        contentViewBounds.backgroundColor = .blue
        titleLabel.textColor = UIColor.white
        /// let marginGuide = contentView.layoutMarginsGuide
    
        lineView.backgroundColor = UIColor(red: 0.425, green: 0.425, blue: 0.425, alpha: 1)
     
       ///set up layout
        contentView.backgroundColor = .green
        contentViewBounds.layer.cornerRadius = 10
      
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //
    // Trigger toggle section when tapping on the header
    //
    @objc func tapHeader(_ gestureRecognizer: UITapGestureRecognizer) {
        guard let cell = gestureRecognizer.view as? AddressColapsedTableViewHeader else {
            return
        }
        
        delegate?.toggleSection(self, section: cell.section)
    }
    
    func setCollapsed(_ collapsed: Bool) {
        //
        // Animate the arrow rotation (see Extensions.swf)
        //
        statusClickImage.rotateImageCollapse(collapsed ? 0.0 : .pi )
    }
    
}

extension UIView {
func rotateImageCollapse(_ toValue: CGFloat, duration: CFTimeInterval = 0.2) {
    let animation = CABasicAnimation(keyPath: "transform.rotation")
    
    animation.toValue = toValue
    animation.duration = duration
    animation.isRemovedOnCompletion = false
    animation.fillMode = CAMediaTimingFillMode.forwards
    
    self.layer.add(animation, forKey: nil)
}
}
 
