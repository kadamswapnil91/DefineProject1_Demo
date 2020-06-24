//
//  fifthdataViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 20/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

protocol Datapass
{
    func Datapassing(name:String , city:String , contact: String)
    
    
    
}



class fifthdataViewController: UIViewController {
    
    
    @IBAction func btn_BacktoFifth(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var txt_name: UITextField!
    
    @IBOutlet weak var txt_city: UITextField!
    
    @IBOutlet weak var txt_contact: UITextField!
    
    var delegate :Datapass!
    
    @IBAction func btn_save(_ sender: UIButton) {
        
        if txt_name.text == ""
        {
            alert(title: "Please Enter Name...", message: "", delegate: self)
            
        }
            
        else if txt_city.text == ""
        {
            alert(title: "Please Enter City ...", message: "", delegate: self)
            
        }
            
        else if  txt_contact.text == ""
        {
            alert(title: "Please Enter Contact Number... ", message: "", delegate: self)
            
        }
        else
        {
            delegate.Datapassing(name: txt_name.text!, city: txt_city.text!, contact: txt_contact.text!)
            
        }
        
        
        
        
    }
    
    func alert(title:String, message:String, delegate:AnyObject)
    {
        let alert = UIAlertView()
        alert.title=title
        alert.message = message
        alert.addButton(withTitle: "OK")
        alert.delegate=delegate
        alert.show()
        
        
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.isNavigationBarHidden = true
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
