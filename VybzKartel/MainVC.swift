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
    
    var vybz1: KartelSong! = nil
    var vybz2: KartelSong! = nil
    var vybz3: KartelSong! = nil
    var vybz4: KartelSong! = nil
    var vybz5: KartelSong! = nil
    var vybz6: KartelSong! = nil
    var vybz7: KartelSong! = nil
    var vybz8: KartelSong! = nil
    var vybz9: KartelSong! = nil
    var vybz10: KartelSong! = nil
    var vybz11: KartelSong! = nil
    var vybz12: KartelSong! = nil
    var vybz13: KartelSong! = nil
    var vybz14: KartelSong! = nil
    var vybz15: KartelSong! = nil
    var vybz16: KartelSong! = nil
    var vybz17: KartelSong! = nil
    var vybz18: KartelSong! = nil
    var vybz19: KartelSong! = nil
    var vybz20: KartelSong! = nil
    var vybz21: KartelSong! = nil
    var vybz22: KartelSong! = nil
    var vybz23: KartelSong! = nil
    var vybz24: KartelSong! = nil
    var vybz25: KartelSong! = nil
    var vybz26: KartelSong! = nil
    var vybz27: KartelSong! = nil
    var vybz28: KartelSong! = nil
    var vybz29: KartelSong! = nil
    var vybz30: KartelSong! = nil
    var vybz31: KartelSong! = nil
    var vybz32: KartelSong! = nil
    var vybz33: KartelSong! = nil
    var vybz34: KartelSong! = nil
    var vybz35: KartelSong! = nil
    
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
    @IBAction func gyalSongs(_ sender: Any) {
        songsArray.removeAll()
        songsArray += [vybz1, vybz2, vybz3, vybz4, vybz5, vybz6, vybz7, vybz8, vybz9, vybz10]
        
        songsTableView.reloadData()
    }
    
    @IBAction func gunSongs(_ sender: Any) {
        songsArray.removeAll()
        songsArray += [vybz11, vybz12, vybz13, vybz14, vybz15, vybz16, vybz17, vybz18, vybz19, vybz20, vybz21, vybz22]
        
        songsTableView.reloadData()
    }
    
    @IBAction func ghettoSongs(_ sender: Any) {
        songsArray.removeAll()
        songsArray += [vybz23, vybz24, vybz25, vybz26, vybz27, vybz28, vybz29, vybz30, vybz31, vybz32, vybz33, vybz34, vybz35]
        
        songsTableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create new instances of the KartelSong class with values for each property
        vybz1 = KartelSong(videoTitle2: "Bet Mi Money", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/6U3ojmzAgUo\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/6U3ojmzAgUo/hqdefault.jpg")
        vybz2 = KartelSong(videoTitle2: "Couldn't", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/2vOVx1OWvuE\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/2vOVx1OWvuE/hqdefault.jpg")
        vybz3 = KartelSong(videoTitle2: "You Make Me Cry", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/z_nZL0hwObU\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/z_nZL0hwObU/hqdefault.jpg")
        vybz4 = KartelSong(videoTitle2: "You Body Perfect", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/y4FgAUBjnLE\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/y4FgAUBjnLE/hqdefault.jpg")
        vybz5 = KartelSong(videoTitle2: "Tell Me If You Like IT", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/m81NVWbekiI\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/m81NVWbekiI/hqdefault.jpg")
        vybz6 = KartelSong(videoTitle2: "Mile High Club", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/-8KDvdh9C1Y\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/-8KDvdh9C1Y/hqdefault.jpg")
        vybz7 = KartelSong(videoTitle2: "Bay Bay", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/mb9QlhTChuw\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/mb9QlhTChuw/hqdefault.jpg")
        vybz8 = KartelSong(videoTitle2: "Enchanting", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/MrYRdRUjqJM?list=RDMrYRdRUjqJM\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/MrYRdRUjqJM/hqdefault.jpg")
        vybz9 = KartelSong(videoTitle2: "Conjugal Visit", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/INAqa1PUfTk?list=RDMrYRdRUjqJM\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/INAqa1PUfTk/hqdefault.jpg")
        vybz10 = KartelSong(videoTitle2: "Ice Queen", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/Uy3ISTGJSvk?list=RDMrYRdRUjqJM\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/Uy3ISTGJSvk/hqdefault.jpg")
        vybz11 = KartelSong(videoTitle2: "We Nuh Fraid", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/CbmLHPhBwjI\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/CbmLHPhBwjI/hqdefault.jpg")
        vybz12 = KartelSong(videoTitle2: "Gun Session", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/Y5ChjnfW2uc\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/Y5ChjnfW2uc/hqdefault.jpg")
        vybz13 = KartelSong(videoTitle2: "Nuh Badda Try", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/42mrIkuAqKE\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/42mrIkuAqKE/hqdefault.jpg")
        vybz14 = KartelSong(videoTitle2: "No Permission", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/WF-2wPi0DWY\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/WF-2wPi0DWY/hqdefault.jpg")
        vybz15 = KartelSong(videoTitle2: "Broad Daylight", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/-yIsGzA5f-w\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/-yIsGzA5f-w/hqdefault.jpg")
        vybz16 = KartelSong(videoTitle2: "Buss My Gun", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/hwtDJYCmoUk\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/hwtDJYCmoUk/hqdefault.jpg")
        vybz17 = KartelSong(videoTitle2: "12 Gauge", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/5wQLVT5w88E\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/5wQLVT5w88E/hqdefault.jpg")
        vybz18 = KartelSong(videoTitle2: "Kill Dem All & Done", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/j-cy5NWPGiA\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/j-cy5NWPGiA/hqdefault.jpg")
        vybz19 = KartelSong(videoTitle2: "When Since", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/QBq6rY0ZpKM\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/QBq6rY0ZpKM/hqdefault.jpg")
        vybz20 = KartelSong(videoTitle2: "Mobay Anthem", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/-FwKDZqnMMA\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/-FwKDZqnMMA/hqdefault.jpg")
        vybz21 = KartelSong(videoTitle2: "My Scheme", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/ozfosxXbMtg\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/ozfosxXbMtg/hqdefault.jpg")
        vybz22 = KartelSong(videoTitle2: "Sen Fi Mi Army", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/jyPwGnl8H0k\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/jyPwGnl8H0k/hqdefault.jpg")
        vybz23 = KartelSong(videoTitle2: "Life We Living", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/5F877s6KAUA\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/5F877s6KAUA/hqdefault.jpg")
        vybz24 = KartelSong(videoTitle2: "Imagine", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/ifdlfv6fRLo\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/ifdlfv6fRLo/hqdefault.jpg")
        vybz25 = KartelSong(videoTitle2: "Thank You Jah", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/Ki4WVUMFuWI\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/Ki4WVUMFuWI/hqdefault.jpg")
        vybz26 = KartelSong(videoTitle2: "Bad Reputation", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/E53jtIhMHDI\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/E53jtIhMHDI/hqdefault.jpg")
        vybz27 = KartelSong(videoTitle2: "Selassi Love We", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/qAl4beIIZgs\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/qAl4beIIZgs/hqdefault.jpg")
        vybz28 = KartelSong(videoTitle2: "Poor People Land", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/nVNMNDNg7ps\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/nVNMNDNg7ps/hqdefault.jpg")
        vybz29 = KartelSong(videoTitle2: "Protect Me", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/0paz5XP8YSs\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/0paz5XP8YSs/hqdefault.jpg")
        vybz30 = KartelSong(videoTitle2: "Where Is The Love (Black Child)", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/FsuuFKc2yeE?list=PLYhKtnbo-eOmbKzbNAlZx8FimFXDGarwi\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/FsuuFKc2yeE/hqdefault.jpg")
        vybz31 = KartelSong(videoTitle2: "Emergency", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/NtTFKotGWew\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/NtTFKotGWew/hqdefault.jpg")
        vybz32 = KartelSong(videoTitle2: "Dem Nuh Like Wi", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/2vGsWBoc85c\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/2vGsWBoc85c/hqdefault.jpg")
        vybz33 = KartelSong(videoTitle2: "Life Sweet", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/HIIpdIBNFDk\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/HIIpdIBNFDk/hqdefault.jpg")
        vybz34 = KartelSong(videoTitle2: "Life Story", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/I7TGV2dqrME\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/I7TGV2dqrME/hqdefault.jpg")
        vybz35 = KartelSong(videoTitle2: "More Life", videoURL2: "<iframe width=\"\(String(describing: accessVideoVC?.frame.width))\" height=\"\(String(describing: accessVideoVC?.frame.height))\" src=\"https://www.youtube.com/embed/Ask-HLg6ayU\" frameborder=\"0\" allowfullscreen></iframe>", imageURL2: "http://i3.ytimg.com/vi/Ask-HLg6ayU/hqdefault.jpg")
        
        //Append each new instance to the songArray
        songsArray += [vybz1, vybz2, vybz3, vybz4, vybz5, vybz6, vybz7, vybz8, vybz9, vybz10]
        
        songsTableView.delegate = self
        songsTableView.dataSource = self
        
        songsTableView.reloadData()
        
    }

}

