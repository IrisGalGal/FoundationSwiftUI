//
//  DataService.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/9/24.
//

import Foundation

struct DataService{
    func getFile() -> [Company]{
        if let url = Bundle.main.url(forResource: "m4-challenge", withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do{
                    let companies = try decoder.decode(Companies.self, from: data)
                    return companies.companies
                }catch{
                    print("Couldn't parse the JSON: \(error)")
                }
            }catch{
                print("Couldn't read the file: \(error)")
            }
        }
        return [Company]()
    }
}
