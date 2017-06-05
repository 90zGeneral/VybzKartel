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
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var selectedSongLabel: UILabel!
    @IBOutlet weak var selectedSongImage: UIImageView!
    @IBOutlet weak var loadingSign: UIActivityIndicatorView!
    
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
        
        //Break up the videoURL string to get the url
        let dividedStringArray1 = chosenVybz.videoURL.components(separatedBy: "src=\"")
        let dividedStringArray2 = dividedStringArray1[1].components(separatedBy: "\"")
        
        //Make a URLRequest on the URL and then load it into the webView
        let url = URL(string: dividedStringArray2[0])!
        let urlReq = URLRequest(url: url)
        webView.loadRequest(urlReq)

    }
    
    //These Delegate methods are called wherever there is an instance of a webView
    func webViewDidStartLoad(_ webView: UIWebView) {
        loadingSign.hidesWhenStopped = true
        loadingSign.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        loadingSign.stopAnimating()
    }
}

//Global access point for the webView property of this VideoVC class
var accessVideoVC = VideoVC().webView
