//
//  MovieItem.swift
//  MovieMenu
//
//  Created by Iris GalGal on 1/5/24.
//

import Foundation

struct MovieItem: Identifiable{
    var id: UUID = UUID()
    var name: String
    var year: String
    var director: String
    var description: String
    var watched: Bool
}
