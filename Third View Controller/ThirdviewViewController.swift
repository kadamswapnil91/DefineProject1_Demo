//
//  ThirdviewViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 18/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class ThirdviewViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().revealToggle(animated: true)
        btn_back3.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
    }
    
    @IBOutlet weak var btn_back3: UIButton!
    
    
    @IBAction func btn_NextToForth(_ sender: UIButton) {
        
        let forthview: ForthViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as! ForthViewController
        
        self.navigationController?.pushViewController(forthview, animated: true)
        
    }
    
    
    
    
    @IBAction func btn_BackToSecond(_ sender: UIButton)
    {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    

    @IBOutlet weak var collectionview: UICollectionView!
    
    var companylogoarray = [#imageLiteral(resourceName: "define logo"),#imageLiteral(resourceName: "amazon logo"),#imageLiteral(resourceName: "infosys logo"),#imageLiteral(resourceName: "google logo"),#imageLiteral(resourceName: "jio logo"),#imageLiteral(resourceName: "apple logo"),#imageLiteral(resourceName: "facebook logo"),#imageLiteral(resourceName: "microsoft logo"),#imageLiteral(resourceName: "instagram logo"),#imageLiteral(resourceName: "twitter"),#imageLiteral(resourceName: "mumbai"),#imageLiteral(resourceName: "youtube logo"),#imageLiteral(resourceName: "tvs logo"),#imageLiteral(resourceName: "hero logo"),#imageLiteral(resourceName: "yahoo logo"),#imageLiteral(resourceName: "linked in logo"),#imageLiteral(resourceName: "kolkata"),#imageLiteral(resourceName: "channai"),#imageLiteral(resourceName: "delhi"),#imageLiteral(resourceName: "next orange"),#imageLiteral(resourceName: "next button")]
    var companynamearray = ["Define Labs","Amazon","Infosys","Google","Jio","Apple","Facebook","Microsoft","Instagram","Twitter","Mumbai","YouTube","TVS ","Hero","Yahoo!","LinkedIn","Kolkata","Chennai","Delhi","Orange Next","Green Next"]
    
    
    


 
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return companylogoarray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell : customCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "custom cell", for: indexPath) as! customCollectionViewCell
        
        cell.lbl_name.text = companynamearray[indexPath.row]
        cell.img.image = companylogoarray[indexPath.row]
        cell.img.layer.masksToBounds = true
        cell.img.layer.cornerRadius = cell.img.frame.height/2
        //cell.img.contentMode = .scaleAspectFill
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imagedetail : collectiondataViewController = self.storyboard?.instantiateViewController(withIdentifier: "collectiondataViewController") as! collectiondataViewController
        imagedetail.mainlbl = companynamearray[indexPath.row]
        imagedetail.mainimage = companylogoarray[indexPath.row]
        
        
        self.navigationController?.pushViewController(imagedetail, animated: true)
       
        

        
    }
    
    
    
}
