//
//  FifthViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 20/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController , Datapass {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().revealToggle(animated: true)
        btn_back5.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        
    }
    
    @IBOutlet weak var btn_back5: UIButton!
    
    
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
    


}
