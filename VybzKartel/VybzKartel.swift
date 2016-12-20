//
//  VybzKartel.swift
//  VybzKartel
//
//  Created by Roydon Jeffrey on 12/17/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import Foundation

class KartelSong {
    
    //Private variables not accessible outside of this class
    private var _videoTitle: String!
    private var _videoURL: String!
    private var _imageURL: String!
    
    //Getters to grab the values passed into the initializer
    var videoTitle: String {
        return _videoTitle
    }
    var videoURL: String {
        return _videoURL
    }
    var imageURL: String {
        return _imageURL
    }
    
    init(videoTitle2: String, videoURL2: String, imageURL2: String) {
        self._videoTitle = videoTitle2
        self._videoURL = videoURL2
        self._imageURL = imageURL2
    }
}
