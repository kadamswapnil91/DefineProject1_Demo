//
//  ForthViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 19/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
     @IBOutlet var title_lbl: UILabel!
   
    @IBOutlet weak var btn_menu: UIButton!
    @IBOutlet weak var backgroundview: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //self.navigationController?.isNavigationBarHidden = true
        ///revelcontroller
        self.revealViewController().revealToggle(animated: true) //Hidesidemenu
        
        btn_menu.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        
        
        
        
        /////Tabbarcode
        self.navigationController?.isNavigationBarHidden = true
        
        
        
        TabBarC()
    
        
        
    }
    
    
    @IBAction func btn_BackToThird(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func btn_NextToFifth(_ sender: UIButton) {
        let fifthdata : FifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        
        self.navigationController?.pushViewController(fifthdata, animated: true)
        
    }
    
    

    let tabBar = UITabBarController()
    
    @IBAction func btn_TabBarController(_ sender: UIButton)
    {
        
       
    
    }
    
    func TabBarC()
    {
        let firstVC = UIViewController()
        firstVC.view.backgroundColor = UIColor.green
        
        let secondVC = UIViewController()
        secondVC.view.backgroundColor = UIColor.yellow
        
        let thirdVC = UIViewController()
        thirdVC.view.backgroundColor = UIColor.blue
        
        let item1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let item2 = UITabBarItem(tabBarSystemItem: .downloads , tag: 1)
        let item3 = UITabBarItem(tabBarSystemItem: .history, tag: 2)
        
        
        firstVC.tabBarItem = item1
        secondVC.tabBarItem = item2
        thirdVC.tabBarItem = item3
        tabBar.viewControllers = [firstVC,secondVC,thirdVC]
        
        self.view.addSubview(tabBar.view)
        self.view.bringSubview(toFront: btn_menu)
        self.view.bringSubview(toFront: title_lbl)
        

    

}
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if(item.tag == 0)
        {
            print("preess1")
            // Code for item 1
        } else if(item.tag == 1) {
            // Code for item 2
        }
        else if(item.tag == 3) {
            // Code for item 2
        }
    }
}
