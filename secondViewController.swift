//
//  secondViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 17/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
  
   var weekarray = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]

    @IBOutlet weak var datepicker: UIDatePicker!
    
    @IBAction func Act_datepicker(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from:datepicker.date )
        lbl_datepicker.text = strDate
        
        
    }
    
   @IBOutlet weak var lbl_datepicker: UILabel!
    
    
    
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    @IBOutlet weak var btn_savepickerview: UIButton!
    
    @IBAction func btn_Savepickerdata(_ sender: Any)
    {
        self.lbl_dayshow.text = self.weekarray[self.pickerview.selectedRow(inComponent: (0))]
        
    }
    
    @IBOutlet weak var lbl_dayshow: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        self.pickerview.delegate = self
        self.pickerview.dataSource = self

        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return weekarray.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.weekarray[row]
        
    }
    



}
