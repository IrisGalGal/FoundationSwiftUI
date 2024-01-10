//
//  Companies.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/9/24.
//

import Foundation

struct Companies: Identifiable, Decodable {
    let id: UUID = UUID()
    var companies: [Company]
}

