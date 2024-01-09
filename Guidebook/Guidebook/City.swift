//
//  City.swift
//  Guidebook
//
//  Created by Iris GalGal on 1/8/24.
//

import Foundation

struct City: Identifiable, Codable{
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    var attractions: [Attraction]
}

