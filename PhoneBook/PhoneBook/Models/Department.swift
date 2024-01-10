//
//  Department.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/10/24.
//

import Foundation

struct Department: Identifiable, Decodable {
    let id: UUID = UUID()
    var departmentName: String
    var employees: [Employee]
    
    enum CodingKeys: String, CodingKey {
        case departmentName = "department_name"
        case employees
    }
}
