//
//  OwnersCustomerDisplayController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/30/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class OwnersCustomerDisplayController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var ownerCustomerView: UICollectionView!
    
    var ownerCustomerRequest: Results<OwnerCustomers>?


    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        ownerCustomerView.reloadData()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ownerCustomerRequest!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OwnerCustomerCell", for: indexPath) as? OwnerCustomerViewCell
        
        let ownerCustomerNameAndTitle = ownerCustomerRequest![indexPath.row]
        
        cell?.ownerCustomerNameAndTitle.setTitle("\(ownerCustomerNameAndTitle.ownerCustomerFirstName), \(ownerCustomerNameAndTitle.ownerCustomerLastName)", for: .normal)
        
        return cell!
    }
    
    func fetchData() {
        let realm = try! Realm()
        
        ownerCustomerRequest = realm.objects(OwnerCustomers.self)
    }

}
