//
//  OwnerHIstoryController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class OwnerHIstoryController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var historyData: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "OwnerHistoryCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? OwnerHistoryCell else {
            fatalError("The dequeued cell is not an instance of ProgressTableViewCell.")
        }
        
        
        cell.addressLabel.text = "Address"
        cell.costLabel.text = "$"
        cell.dateLabel.text = "__/__/___"
        
        return cell
        
    }
}
