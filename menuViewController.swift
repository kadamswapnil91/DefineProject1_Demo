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
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as? ForthViewController {
            let navController = UINavigationController(rootViewController: secondViewController)
            navController.setViewControllers([secondViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        
       
        
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
