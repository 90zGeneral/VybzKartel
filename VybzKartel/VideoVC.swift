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
        
        webView.loadHTMLString(chosenVybz.videoURL, baseURL: nil)
//        webView.scalesPageToFit = true
//        webView.contentMode = UIViewContentMode.scaleAspectFit
    }

}
