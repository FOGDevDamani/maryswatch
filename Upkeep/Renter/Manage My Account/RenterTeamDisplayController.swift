//
//  RenterTeamDisplayController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/30/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class RenterTeamDisplayController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
 
    @IBOutlet weak var renterTeamView: UICollectionView!
    
    var renterTeamRequest: Results<RenterTeam>?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        renterTeamView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return renterTeamRequest!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RenterTeamCell", for: indexPath) as? RenterTeamViewCell
        
        let nameAndTitle = renterTeamRequest![indexPath.row]
        
        cell?.teamMemberNameAndTitle.setTitle("\(nameAndTitle.renterTeamFirstName), \(nameAndTitle.renterTeamAssign)", for: .normal)
        
        return cell!
    }
    
    func fetchData() {
        let realm = try! Realm()
        
        renterTeamRequest = realm.objects(RenterTeam.self)
    }

    

}
