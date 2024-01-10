//
//  Employees.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/9/24.
//

import Foundation

struct Employee: Identifiable,Decodable {
    let id = UUID()
    var name, position, email, phone: String
}
