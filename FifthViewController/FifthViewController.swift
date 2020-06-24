//
//  FifthViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 20/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController , Datapass {
    
    @IBAction func btn_BackToPrevious(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var lbl_name: UILabel!
    
    @IBOutlet weak var lbl_city: UILabel!
    
    @IBOutlet weak var lbl_contact: UILabel!
    
    
    @IBAction func btn_signup(_ sender: UIButton) {
        
        let fifthdata : fifthdataViewController = self.storyboard?.instantiateViewController(withIdentifier: "fifthdataViewController") as! fifthdataViewController
        fifthdata.delegate=self
        self.navigationController?.pushViewController(fifthdata, animated: true)
        
        
        
        
    }
    
    
    func Datapassing(name: String, city: String, contact: String)
    {
        
        lbl_name.text = name
        lbl_city.text = city
        lbl_contact.text = contact
        
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // self.navigationController?.isNavigationBarHidden = true

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
