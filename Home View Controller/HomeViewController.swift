//
//  HomeViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 19/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UISearchBarDelegate {
    
    
    @IBOutlet weak var isSearching: UISearchBar!
    
        
    
    
    var menutag : Int = 0
    @IBAction func btn_menu(_ sender: UIButton) {
        
       
        if (menutag == 0)
        {
            menuSidebar.isHidden = false;
            menutag = 1;
            
        }
        else if (menutag == 1)
        {
            menuSidebar.isHidden = true;
            menutag = 0;
            
        }

    
        
    }
    
    @IBOutlet weak var menuSidebar: UIView!
    
    
    
    
    @IBAction func btn_assignment1(_ sender: UIButton) {
        let firstview : ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        self.navigationController?.pushViewController(firstview, animated: true)
        
    }
  
    @IBAction func btn_assignment2(_ sender: UIButton) {
        let sectview : secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        
        self.navigationController?.pushViewController(sectview, animated: true)
        
    }
    
    
    @IBAction func btn_assignment3(_ sender: UIButton) {
        let thirdtview : ThirdviewViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdviewViewController") as! ThirdviewViewController
        
        self.navigationController?.pushViewController(thirdtview, animated: true)
        
    }
    
    
    @IBAction func btn_assignment4(_ sender: UIButton) {
       
        
        let tabBar = UITabBarController()
        
        
        func TabBarC()
        {
            
             //  navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
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
                let homeview : HomeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                
                self.navigationController?.pushViewController(homeview, animated: true)
                
                
            }
           
        }
        
         TabBarC()

        
    }
    
    @IBAction func btn_assignment5(_ sender: UIButton) {
        let fifthdata : FifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController

        self.navigationController?.pushViewController(fifthdata, animated: true)

    }


  
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   let menutag = 0
        menuSidebar.isHidden = true
           // self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }

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
