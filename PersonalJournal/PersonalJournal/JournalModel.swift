//
//  JournalModel.swift
//  PersonalJournal
//
//  Created by Iris GalGal on 1/8/24.
//

import Foundation

struct JournalModel: Identifiable, Hashable{
    var id: UUID = UUID()
    var name : String
    var image : String
}
