//
//  Company.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/9/24.
//

import Foundation

struct Company: Identifiable, Decodable {
    let id: UUID = UUID()
    var companyName: String
    var departments: [Department]
    
    enum CodingKeys: String, CodingKey {
        case companyName = "company_name"
        case departments
    }
}
