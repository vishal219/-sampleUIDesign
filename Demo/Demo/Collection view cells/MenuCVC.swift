//
//  MenuCVC.swift
//  Demo
//
//  Created by Vishal Thakur  on 09/01/23.
//

import UIKit

class MenuCVC: UICollectionViewCell {
    
    //MARK: Outlets
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var innerView: UIView!
    
    static let identifier = "MenuCVC"

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 10.0
        layer.cornerRadius = 10.0
        layer.masksToBounds = false
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.30
        layer.shadowOffset = CGSize(width: 0, height: 5)
        // Initialization code
    }
    
    public func cofigure(_ menu: Menu){
        menuImage.image = UIImage(named: menu.image)
        menuLabel.text = menu.name
        self.innerView.layer.masksToBounds = true
        self.innerView.layer.cornerRadius = 10.0
        self.layoutIfNeeded()
    }

}

struct Menu{
    let image: String
    let name: String
}
