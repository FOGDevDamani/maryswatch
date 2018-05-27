//
//  OwnerProgressController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class OwnerProgressController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var progressData: UITableView!
    @IBOutlet weak var newRequestsData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell1: OwnerProgressDataCell?
        var cell2: NewRequestsCell?
        let cellIdentifier1 = "OwnerProgressDataCell"
        let cellIdentifier2 = "NewRequestsDataCell"
        
        
        if tableView == self.progressData {
            cell1 = tableView.dequeueReusableCell(withIdentifier: cellIdentifier1, for: indexPath) as? OwnerProgressDataCell
            
            cell1?.addressLabel.text = "Address, unit #, City, ST"
            cell1?.percentageLabel.text = "%"
            cell1?.dateLabel.text = " / / "
            
            return cell1!
            
        } else {
            cell2 = tableView.dequeueReusableCell(withIdentifier: cellIdentifier2, for: indexPath) as? NewRequestsCell
            
            return cell2!
            
        }
        
    }

}
