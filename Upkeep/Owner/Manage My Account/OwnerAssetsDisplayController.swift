//
//  OwnerAssetsDisplayController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/30/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class OwnerAssetsDisplayController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var ownerAssetsView: UICollectionView!
    
    var ownerAssetRequest: Results<OwnerAssets>?

    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        ownerAssetsView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ownerAssetRequest!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OwnerAssetsCell", for: indexPath) as? OwnerAssetsViewCell
        
        let ownerAssetsAddressAndType = ownerAssetRequest![indexPath.row]
        
        cell?.ownerAssetAddressAndType.setTitle("\(ownerAssetsAddressAndType.ownerPropertyAddress), \(ownerAssetsAddressAndType.ownerTypeOfProperty)", for: .normal)
        
        return cell!
    }
    
    func fetchData() {
        let realm = try! Realm()
        
        ownerAssetRequest = realm.objects(OwnerAssets.self)
    }

    
}
