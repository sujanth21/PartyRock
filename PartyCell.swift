//
//  PartyCell.swift
//  PartyRock
//
//  Created by Sujanth on 1/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func updateUI(partRock: PartyRock) {
        videoTitle.text = partRock.videoTitle
    }

}
