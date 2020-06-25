//
//  revealHomeViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 25/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class revealHomeViewController: UIViewController {

    @IBOutlet weak var btn_menu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        btn_menu.target = self.revealViewController()
        btn_menu.action = #selector(SWRevealViewController.revealToggle(_:))
         self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
       

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
