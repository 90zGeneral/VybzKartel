//
//  ViewController.swift
//  VybzKartel
//
//  Created by Roydon Jeffrey on 12/14/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var songsTableView: UITableView!
    
    var songsArray: [KartelSong] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Vybz", for: indexPath) as? VybzCell {
            let thisVybz = songsArray[indexPath.row]
            cell.updateUI(vybzParty: thisVybz)
            
            return cell
        }else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedSong = songsArray[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: selectedSong)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let myVybz = sender as? KartelSong {
                destination.chosenVybz = myVybz
            }
        }
    }
    
    //Preparing the filtering tabs
    @IBAction func topSongs(_ sender: Any) {
    }
    
    @IBAction func classics(_ sender: Any) {
    }
    
    @IBAction func newSongs(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create new instances of the KartelSong class with values for each property
        let vybz1 = KartelSong(videoTitle2: "Bet Mi Money", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/6U3ojmzAgUo\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/6U3ojmzAgUo/hqdefault.jpg")
        let vybz2 = KartelSong(videoTitle2: "Couldn't", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/2vOVx1OWvuE\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/2vOVx1OWvuE/hqdefault.jpg")
        let vybz3 = KartelSong(videoTitle2: "You Make Me Cry", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/z_nZL0hwObU\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/z_nZL0hwObU/hqdefault.jpg")
        let vybz4 = KartelSong(videoTitle2: "You Body Perfect", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/y4FgAUBjnLE\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/y4FgAUBjnLE/hqdefault.jpg")
        let vybz5 = KartelSong(videoTitle2: "Tell Me If You Like IT", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/m81NVWbekiI\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/m81NVWbekiI/hqdefault.jpg")
        let vybz6 = KartelSong(videoTitle2: "Mile High Club", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/-8KDvdh9C1Y\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/-8KDvdh9C1Y/hqdefault.jpg")
        let vybz7 = KartelSong(videoTitle2: "Bay Bay", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/mb9QlhTChuw\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/mb9QlhTChuw/hqdefault.jpg")
        let vybz8 = KartelSong(videoTitle2: "Enchanting", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/MrYRdRUjqJM?list=RDMrYRdRUjqJM\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/MrYRdRUjqJM/hqdefault.jpg")
        let vybz9 = KartelSong(videoTitle2: "Conjugal Visit", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/INAqa1PUfTk?list=RDMrYRdRUjqJM\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/INAqa1PUfTk/hqdefault.jpg")
        let vybz10 = KartelSong(videoTitle2: "Ice Queen", videoURL2: "<iframe width=\"\(accessVideoVC?.frame.width)\" height=\"\(accessVideoVC?.frame.height)\" src=\"https://www.youtube.com/embed/Uy3ISTGJSvk?list=RDMrYRdRUjqJM\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/Uy3ISTGJSvk/hqdefault.jpg")
        
        //Append each new instance to the songArray
        songsArray += [vybz1, vybz2, vybz3, vybz4, vybz5, vybz6, vybz7, vybz8, vybz9, vybz10]
        
        songsTableView.delegate = self
        songsTableView.dataSource = self
        
        songsTableView.reloadData()
        
    }

}

