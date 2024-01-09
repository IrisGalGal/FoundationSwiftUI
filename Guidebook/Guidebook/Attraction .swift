//
//  Attraction .swift
//  Guidebook
//
//  Created by Iris GalGal on 1/8/24.
//

import Foundation

struct Attraction: Identifiable, Codable{
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
