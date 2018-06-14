//
//  RenterInvoiceEstimateController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/22/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class RenterInvoiceEstimateController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
        let cellIdentifier = "Renter-InvoiceEstimateCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? RenterInvoiceEstimateCell else {
            fatalError("The dequeued cell is not an instance of Renter-InvoiceEstimateTableViewCell.")
        }
        
        return cell
        
    }
}
