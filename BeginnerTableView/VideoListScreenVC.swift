//
//  VideoListScreenViewController.swift
//  BeginnerTableView
//
//  Created by Daniel Colangelo on 9/27/18.
//  Copyright © 2018 Daniel Colangelo. All rights reserved.
//

import UIKit

class VideoListScreenVC: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    var video: [Video] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        video = createArray()
    }
    
    func createArray() -> [Video] {
        
        var tempVideo: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your First App")
        let video2 = Video(image: #imageLiteral(resourceName: "dev-setup"), title: "My Dev Setup")
        let video3 = Video(image: #imageLiteral(resourceName: "int-overview"), title: "iOS Interview Questions")
        let video4 = Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "Buttons in a Tableview")
        let video5 = Video(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "UIPickerView Tutorial")
        let video6 = Video(image: #imageLiteral(resourceName: "vlog-4"), title: "Day in the Life")
        
        tempVideo.append(video1)
        tempVideo.append(video2)
        tempVideo.append(video3)
        tempVideo.append(video4)
        tempVideo.append(video5)
        tempVideo.append(video6)
        
        return tempVideo
    }


}

extension VideoListScreenVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return video.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let videos =  video[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: videos)
        return cell
    }
    
    
}
