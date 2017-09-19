//
//  File.swift
//  MapImplementation
//
//  Created by Staham Nguyen on 19/09/2017.
//  Copyright © 2017 Staham Nguyen. All rights reserved.
//

import UIKit

struct Screen {
    static let WIDTH = UIScreen.main.bounds.width
}

struct Identifier {
    static let ofDroppablePin = "droppablePin"
    static let ofCollectionViewCell = "cellId"
}

let apiKey = "306c507759ede7389d6c8d2b624b4f08"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=10&radius_units=m&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}

