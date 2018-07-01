//
//  ServiceProTeamDisplayController.swift
//  maryswatch
//
//  Created by Damani Turner on 7/1/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class ServiceProTeamDisplayController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var spTeamView: UICollectionView!
    
    
    var spTeamRequest: Results<SPTeam>?

    override func viewDidLoad() {
        super.viewDidLoad()

       fetchData()
        spTeamView.reloadData()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return spTeamRequest!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SPTeamCell", for: indexPath) as? ServiceProTeamViewCell
        
        let serviceProTeamNameAndType = spTeamRequest![indexPath.row]
        
        cell?.spTeamNameAndType.setTitle("\(serviceProTeamNameAndType.spTeamMemberFirstName), \(serviceProTeamNameAndType.spAssignTeamMember)", for: .normal)
        
        return cell!
    }
    
    func fetchData() {
        let realm = try! Realm()
        
        spTeamRequest = realm.objects(SPTeam.self)
    }
}
