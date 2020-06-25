//
//  ForthViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 19/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //self.navigationController?.isNavigationBarHidden = true
    
        
        
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
        
       // TabBarC()
    
    }
    
//    func TabBarC()
//    {
//        let firstVC = UIViewController()
//        firstVC.view.backgroundColor = UIColor.green
//        
//        let secondVC = UIViewController()
//        secondVC.view.backgroundColor = UIColor.yellow
//        
//        let thirdVC = UIViewController()
//        thirdVC.view.backgroundColor = UIColor.blue
//        
//        let item1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
//        let item2 = UITabBarItem(tabBarSystemItem: .downloads , tag: 1)
//        let item3 = UITabBarItem(tabBarSystemItem: .history, tag: 2)
//        
//        
//        firstVC.tabBarItem = item1
//        secondVC.tabBarItem = item2
//        thirdVC.tabBarItem = item3
//        tabBar.viewControllers = [firstVC,secondVC,thirdVC]
//        
//        self.view.addSubview(tabBar.view)
//        
//        
//        // tabbar to exit
//        let button = UIButton.init(type: .system)
//        button.frame = CGRect(x: 90.0, y: 150.0, width: 200.0, height: 52.0)
//        button.setTitle("Back To Home Controller", for: .normal)
//        button.layer.borderWidth = 5
//        button.layer.borderColor = UIColor.white.cgColor
//        button.backgroundColor = UIColor.black
//        button.titleLabel?.textColor = UIColor.white
//        button.tintColor = UIColor.white
//        button.layer.cornerRadius = 15.0
//        
//        //button.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
//        self.view.addSubview(button)
//        
//        func buttonClicked(_ : UIButton)
//        {
//            self.navigationController?.popViewController(animated: true)
//            
//            
//        }
//        
//    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
