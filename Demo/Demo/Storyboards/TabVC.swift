//
//  TabVC.swift
//  Demo
//
//  Created by Vishal Thakur on 10/01/23.
//

import UIKit


class TabVC: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
        view.addSubview(movingView)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        
       
//        super.viewDidLayoutSubviews()
//        let tabbarItem = tabBar.selectedItem?.accessibilityFrame
//        movingView.image = UIImage(named: "shape_1")
//        movingView.frame = CGRect(x: 20.0, y: view.frame.height - tabBar.frame.height, width: 30.0, height: 30.0)
//        movingView.layer.cornerRadius = movingView.frame.height/2.0
//        movingView.backgroundColor = .blue
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        uianimm.runAnimationGroup({ context in
//            // 2 second animation
//            context.duration = 2
//
//            // Animate the NSView downward 20 points
//            var origin = view.frame.origin
//            origin.y -= 20
//
//            // The view will animate to the new origin
//            view.animator().frame.origin = origin
//        }) {
//            // Handle completion
//        }
    }
    
    
    

    let movingView = UIImageView()

}
