//
//  VideoVC.swift
//  VybzKartel
//
//  Created by Roydon Jeffrey on 12/17/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class VybzCell: UITableViewCell {
    
    //Outlets
    @IBOutlet var videoImagePreview: UIImageView!
    @IBOutlet var songTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    //To update the cells
    func updateUI(vybzParty: KartelSong) {
        
        songTitle.text = vybzParty.videoTitle
        
        let url = URL(string: vybzParty.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let urlData = try Data(contentsOf: url)
                
                DispatchQueue.main.async {
                    self.videoImagePreview.image = UIImage(data: urlData)
                }
                
            }catch {
                print(error.localizedDescription)
            }
        }
        
    }

}
