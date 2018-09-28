//
//  VideoCell.swift
//  BeginnerTableView
//
//  Created by Daniel Colangelo on 9/27/18.
//  Copyright © 2018 Daniel Colangelo. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
        
    }
    

}
