//
//  HomeViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 19/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
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
        let forthtview : ForthViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as! ForthViewController
        
        self.navigationController?.pushViewController(forthtview, animated: true)
        
    }
    
//    @IBAction func btn_assignment5(_ sender: UIButton) {
//        let fifthtview : fifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "fifthViewController") as! fifthViewController
//
//        self.navigationController?.pushViewController(fifthtview, animated: true)
//
//    }
//
//
//    @IBAction func btn_assignment6(_ sender: UIButton) {
//    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
