//
//  ViewController.swift
//  PartyRock
//
//  Created by Sujanth Sebamalaithasan on 31/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var partyRocks = [PartyRock]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        
    }

   


}

