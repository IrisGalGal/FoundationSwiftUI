//
//  BookJournal.swift
//  PersonalJournal
//
//  Created by Iris GalGal on 1/8/24.
//

import SwiftUI

struct BookJournal: View {
    @State var arrayJournal = [JournalModel]()
    @State var sheetVisible = false
    @State var sheetPhoto = false
    @State var selectedImage = ""
    @State private var showingAddEntrySheet: Bool = false
    var body: some View {
        VStack{
            GeometryReader(content: { geometry in
                ScrollView{
                    LazyVGrid(columns: [GridItem(spacing: 20),GridItem(spacing: 20)], content: {
                        ForEach(arrayJournal, id: \.self){ item in
                            VStack{
                                Image(item.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: geometry.size.width / 2)
                                    .clipped()
                                    .onTapGesture {
                                        sheetPhoto = true
                                        selectedImage = item.image
                                    }
                                Text(item.name)
                            }
                        }
                    })
                    .padding()
                }
            })
            Button(action: {
                sheetVisible = true
            }, label: {
                Text("Add Entry")
            })
            .sheet(isPresented: $sheetVisible, content: {
                EntryJournal(arrayJournal: $arrayJournal, sheetVisible: $sheetVisible)
            })
            .sheet(isPresented: $sheetPhoto, content: {
                PhotoView(image: $selectedImage)
            })
        }
    }
}

#Preview {
    BookJournal(arrayJournal: [JournalModel(name: "Sample Entry 1", image: "thumbnail"), JournalModel(name: "Sample Entry 2", image: "thumbnail")])
}
