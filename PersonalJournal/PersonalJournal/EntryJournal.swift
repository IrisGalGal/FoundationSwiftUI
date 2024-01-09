//
//  EntryJournal.swift
//  PersonalJournal
//
//  Created by Iris GalGal on 1/8/24.
//

import SwiftUI

struct EntryJournal: View {
    @Binding var arrayJournal : [JournalModel]
    @Binding var sheetVisible: Bool
    
    @State var name: String = ""
    var body: some View {
        HStack{
            Spacer()
            Button(action: {
                sheetVisible = false
            }, label: {
                Image(systemName: "x.circle")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding()
            })
        }

        VStack{
            TextField("Enter your journal entry...", text: $name,axis: .vertical)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button(action: {
                if !name.isEmpty{
                    var newEntry = JournalModel(name: name, image: "thumbnail")
                    arrayJournal.append(newEntry)
                }
                sheetVisible = false
            }, label: {
                Text("Save Entry")
            })
        }
    }
}

#Preview {
    EntryJournal(arrayJournal: Binding.constant([JournalModel]()), sheetVisible: Binding.constant(false))
}
