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
        
        let p1 = PartyRock(imageURL: "https://cdn.pixabay.com/photo/2015/06/06/10/18/music-799257__480.jpg", videoTitle: "Redfoo - Lights Out", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p2 = PartyRock(imageURL: "https://cdn.pixabay.com/photo/2015/03/26/10/22/band-691224__480.jpg", videoTitle: "Redfoo - Let's Get Ridiculous", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p3 = PartyRock(imageURL: "https://cdn.pixabay.com/photo/2013/05/05/09/37/dance-108915__480.jpg", videoTitle: "LMFAO - Sorry For Party Rocking", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p4 = PartyRock(imageURL: "https://cdn.pixabay.com/photo/2015/05/01/09/37/music-748118__480.jpg", videoTitle: "LMFAO - Champagne Showers ft. Natalia Kills", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UA8rcLvS1BY\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p5 = PartyRock(imageURL: "https://cdn.pixabay.com/photo/2015/06/06/10/18/clef-799256__480.jpg", videoTitle: "LMFAO - Shots ft. Lil Jon", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XNtTEibFvlQ\" frameborder=\"0\" allowfullscreen></iframe>")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
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

