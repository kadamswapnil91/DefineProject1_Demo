//
//  ThirdviewViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 18/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class ThirdviewViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

    

    @IBOutlet weak var collectionview: UICollectionView!
    
    var companylogoarray = [#imageLiteral(resourceName: "define logo"),#imageLiteral(resourceName: "amazon logo"),#imageLiteral(resourceName: "infosys logo"),#imageLiteral(resourceName: "google logo"),#imageLiteral(resourceName: "jio logo"),#imageLiteral(resourceName: "apple logo"),#imageLiteral(resourceName: "facebook logo"),#imageLiteral(resourceName: "microsoft logo"),#imageLiteral(resourceName: "instagram logo"),#imageLiteral(resourceName: "twitter"),#imageLiteral(resourceName: "mumbai"),#imageLiteral(resourceName: "youtube logo"),#imageLiteral(resourceName: "tvs logo"),#imageLiteral(resourceName: "hero logo"),#imageLiteral(resourceName: "yahoo logo"),#imageLiteral(resourceName: "linked in logo"),#imageLiteral(resourceName: "kolkata"),#imageLiteral(resourceName: "channai"),#imageLiteral(resourceName: "delhi"),#imageLiteral(resourceName: "next orange"),#imageLiteral(resourceName: "next button")]
    var companynamearray = ["Define Labs","Amazon","Infosys","Google","Jio","Apple","Facebook","Microsoft","Instagram","Twitter","Mumbai","YouTube","TVS ","Hero","Yahoo!","LinkedIn","Kolkata","Chennai","Delhi","Orange Next","Green Next"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
    
    
}
