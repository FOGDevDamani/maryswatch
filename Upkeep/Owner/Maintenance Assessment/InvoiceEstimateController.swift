//
//  InvoiceEstimateController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class InvoiceEstimateController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var invoiceEstimateData: UITableView!
    @IBOutlet weak var talkToUs: UIView!
    @IBOutlet weak var talkToUsClose: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func submitTalkToUs(_ sender: Any) {
        talkToUs.isHidden = true
    }
    
    @IBAction func closeTalkToUs(_ sender: Any) {
        talkToUs.isHidden = true
    }
    
    @IBAction func showTalkToUs(_ sender: Any) {
        talkToUs.isHidden = false
    }
    
    @IBAction func remindMe(_ sender: Any) {
        talkToUs.isHidden = true
    }
    
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "InvoiceEstimateCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? InvoiceEstimateCell else {
            fatalError("The dequeued cell is not an instance of ProgressTableViewCell.")
        }
        
        return cell
        
    }
    

}
