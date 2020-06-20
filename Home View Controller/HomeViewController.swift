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
        let forthtview : ForthViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as! ForthViewController
        
        self.navigationController?.pushViewController(forthtview, animated: true)
        
    }
    
    @IBAction func btn_assignment5(_ sender: UIButton) {
        let fifthdata : FifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController

        self.navigationController?.pushViewController(fifthdata, animated: true)

    }


    @IBAction func btn_assignment6(_ sender: UIButton) {
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   let menutag = 0
        menuSidebar.isHidden = true

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
