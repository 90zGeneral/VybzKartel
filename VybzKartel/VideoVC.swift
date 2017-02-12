//
//  VideoVC.swift
//  VybzKartel
//
//  Created by Roydon Jeffrey on 12/17/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class VideoVC: UIViewController, UIWebViewDelegate {
    
    //Outlets
    @IBOutlet var webView: UIWebView!
    @IBOutlet var selectedSongLabel: UILabel!
    @IBOutlet weak var selectedSongImage: UIImageView!
    @IBOutlet var loadingSign: UIActivityIndicatorView!
    
    private var _chosenVybz: KartelSong!
    
    var chosenVybz: KartelSong {
        get {
            return _chosenVybz
        }set {
            _chosenVybz = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        webView.delegate = self
        
        selectedSongLabel.text = chosenVybz.videoTitle

        let chosenImgURL = URL(string: chosenVybz.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let urlData = try Data(contentsOf: chosenImgURL)
                
                DispatchQueue.main.async {
                    self.selectedSongImage.image = UIImage(data: urlData)
                }
                
            }catch {
                print(error.localizedDescription)
            }
        }
        
        
//        webView.loadHTMLString(chosenVybz.videoURL, baseURL: nil)
        
        //Break up the videoURL string to get the url
        let dividedStringArray1 = chosenVybz.videoURL.components(separatedBy: "src=\"")
        let dividedStringArray2 = dividedStringArray1[1].components(separatedBy: "\"")
        
        //Make a URLRequest on the URL and then load it into the webView
        let url = URL(string: dividedStringArray2[0])!
        let urlReq = URLRequest(url: url)
        webView.loadRequest(urlReq)
    }
}

//Global access point for the webView property of this VideoVC class
var accessVideoVC = VideoVC().webView
