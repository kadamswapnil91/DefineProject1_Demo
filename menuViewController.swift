//
//  menuViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 25/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
    
    @IBAction func btn_assignment1(_ sender: UIButton) {
      
        if let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            let navController = UINavigationController(rootViewController: ViewController)
            navController.setViewControllers([ViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        
        print("Assignment 1 clicked")
        
    }
    
    @IBAction func btn_assignment2(_ sender: UIButton) {
        
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? secondViewController {
            let navController = UINavigationController(rootViewController: secondViewController)
            navController.setViewControllers([secondViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        print("Assignment 2 clicked")
    }
    
    @IBAction func btn_assignment3(_ sender: UIButton)
    {
        if let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdviewViewController") as? ThirdviewViewController {
            let navController = UINavigationController(rootViewController: thirdViewController)
            navController.setViewControllers([thirdViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        print("Assignment 3 clicked")

       
    }
    
    @IBAction func btn_assignment4(_ sender: UIButton)
    {
//        if let ForthViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as? ForthViewController {
//            let navController = UINavigationController(rootViewController: ForthViewController)
//            navController.setViewControllers([ForthViewController], animated:true)
//            self.revealViewController().setFront(navController, animated: true)
//        }
        
        
        
        let tabBar = UITabBarController()
        
        
        func TabBarC()
        {
            
            
            let firstVC = UIViewController()
            firstVC.view.backgroundColor = UIColor.yellow
            
            let secondVC = UIViewController()
            secondVC.view.backgroundColor = UIColor.green
            
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
            
            
            // tabbar to exit
            let button = UIButton.init(type: .system)
            button.frame = CGRect(x: 90.0, y: 150.0, width: 200.0, height: 52.0)
            button.setTitle("Back To Home Controller", for: .normal)
            button.layer.borderWidth = 5
            button.layer.borderColor = UIColor.white.cgColor
            button.backgroundColor = UIColor.black
            button.titleLabel?.textColor = UIColor.white
            button.tintColor = UIColor.white
            button.layer.cornerRadius = 15.0
            
            // button.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
            self.view.addSubview(button)
            
            func buttonClicked(_ : UIButton)
            {
                let homeview : MainHomeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! MainHomeViewController
                
                self.navigationController?.pushViewController(homeview, animated: true)
                
                
            }
            
        }
        
      TabBarC()
        
    }
    
    @IBAction func btn_assignment5(_ sender: UIButton) {
        
        if let FifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as? FifthViewController {
            let navController = UINavigationController(rootViewController: FifthViewController)
            navController.setViewControllers([FifthViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
    print("Assignment 5 clicked")


}
}
