//
//  HomeVC.swift
//  Demo
//
//  Created by Vishal Thakur  on 09/01/23.
//

import UIKit

class HomeVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var splashColllectionView: UICollectionView!
    @IBOutlet weak var layout: UICollectionViewFlowLayout!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var bottomBackgroundView: UIView!
    @IBOutlet weak var heightMenuConstraint: NSLayoutConstraint!
    
    //MARK: Variables
    private var menuItems: [Menu] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = .systemCyan
        splashColllectionView.dataSource = self
        splashColllectionView.delegate = self
        splashColllectionView.register(UINib(nibName: SplashCVC.identifier, bundle: nil), forCellWithReuseIdentifier: SplashCVC.identifier)
        menuCollectionView.register(UINib(nibName: MenuCVC.identifier, bundle: nil), forCellWithReuseIdentifier: MenuCVC.identifier)
       // layout.collectionView?.delegate = self
        //layout.itemSize = UICollectionView.automa
        //splashColllectionView.register(SplashCVC.self, forCellWithReuseIdentifier: SplashCVC.identifier)
        
        getMenu()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bottomBackgroundView.layer.cornerRadius = 10.0
        let height = menuCollectionView.collectionViewLayout.collectionViewContentSize.height
        heightMenuConstraint.constant = height + 20
            self.view.layoutIfNeeded()
    }
    
    
    private func getMenu(){
        menuItems.append(Menu(image: AppImages.saloon, name: "Saloon"))
        menuItems.append(Menu(image: AppImages.retail, name: "Retail"))
        menuItems.append(Menu(image: AppImages.mall, name: "Mall"))
        menuItems.append(Menu(image: AppImages.gym, name: "GYM"))
        menuItems.append(Menu(image: AppImages.grocery, name: "grocery"))
        menuItems.append(Menu(image: AppImages.saloon, name: "Saloon"))
        menuItems.append(Menu(image: AppImages.retail, name: "Retail"))
        menuItems.append(Menu(image: AppImages.mall, name: "Mall"))
        menuItems.append(Menu(image: AppImages.gym, name: "GYM"))
        
    }


}

extension HomeVC : UICollectionViewDataSource, UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == menuCollectionView{
            return menuItems.count
        }
        return  3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == menuCollectionView{
            let cell = menuCollectionView.dequeueReusableCell(withReuseIdentifier: MenuCVC.identifier, for: indexPath) as! MenuCVC
            cell.menuImage.image = UIImage(named: menuItems[indexPath.row].image)
            cell.menuLabel.text = menuItems[indexPath.row].name
            return cell
        }
        else{
            let cell = splashColllectionView.dequeueReusableCell(withReuseIdentifier: SplashCVC.identifier, for: indexPath)
            as! SplashCVC
            cell.configuire(AppImages.offer)
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == splashColllectionView{
            return CGSize(width: self.splashColllectionView.bounds.width, height: self.splashColllectionView.bounds.height)
        }
        else{
            return CGSize(width: self.menuCollectionView.bounds.width/3.5, height: self.menuCollectionView.bounds.width/2.75)
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var index = Int(floor(self.splashColllectionView.contentOffset.x/self.splashColllectionView.frame.width))
        if index < 0{
            index = 0
        }
        else if index > 2 {
            index = 2
        }
        pageControl.currentPage = index
        
        
    }
    
}
