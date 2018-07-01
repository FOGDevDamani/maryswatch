//
//  OwnerTeamDisplayController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/30/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class OwnerTeamDisplayController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var ownerTeamVIew: UICollectionView!
    
    var ownerTeamRequest: Results<OwnerTeam>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        ownerTeamVIew.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ownerTeamRequest!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OwnerTeamCell", for: indexPath) as? OwnerTeamViewCell
        
        let ownerTeamAndTitle = ownerTeamRequest![indexPath.row]
        
        cell?.ownerTeamNameAndTitle.setTitle("\(ownerTeamAndTitle.ownerTeamMemberFirstName), \(ownerTeamAndTitle.assignOwnerTeamMember)", for: .normal)
        
        return cell!
    }
    
    func fetchData() {
        let realm = try! Realm()
        
        ownerTeamRequest = realm.objects(OwnerTeam.self)
    }

    
}
