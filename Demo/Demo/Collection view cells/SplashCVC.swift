//
//  SplashCVC.swift
//  Demo
//
//  Created by Vishal Thakur  on 09/01/23.
//

import UIKit

class SplashCVC: UICollectionViewCell {
    
    static let identifier = "SplashCVC"
    
    //MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configuire(_ imageName : String){
        imageView.image = UIImage(named:imageName)
    }
    
    

}
