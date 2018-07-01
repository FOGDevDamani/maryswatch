//
//  ServiceProCustomerDisplayController.swift
//  maryswatch
//
//  Created by Damani Turner on 7/1/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class ServiceProCustomerDisplayController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var spCustomerView: UICollectionView!
    
    var spCustomerRequest: Results<SPCustomers>?

    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        spCustomerView.reloadData()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return spCustomerRequest!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SPCustomerCell", for: indexPath) as? ServiceProCustomerViewCell
        
        let serviceProCustomerNameAndType = spCustomerRequest![indexPath.row]
        
        cell?.spCustomerNameAndType.setTitle("\(serviceProCustomerNameAndType.spCustomerFirstName) \(serviceProCustomerNameAndType.spCustomerLastName)", for: .normal)
        
        return cell!
    }
    
    func fetchData() {
        let realm = try! Realm()
        
        spCustomerRequest = realm.objects(SPCustomers.self)
    }

}
