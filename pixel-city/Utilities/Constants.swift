//
//  Constants.swift
//  pixel-city
//
//  Created by Robert Haddad on 12/8/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import Foundation

let apiKey = "eb8cfd12b5d4d7bb95abe4f5f6623a08"

func flickrUrl (forApiKey key: String, withAnnotation annotation: DroppablePin, numberOfPhotos number: Int) -> String{
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    return url
}


