//
//  GalleryView.swift
//  Restaurant
//
//  Created by Iris GalGal on 1/5/24.
//

import SwiftUI

struct GalleryView: View {
    @State var photos: [String] = [String]()
    @State var sheetVisible = false
    @State var selectedPhoto : String = ""
    var dataService = DataService()

    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Gallery")
                .font(.title)
                .bold()
            GeometryReader(content: { geometry in
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: [GridItem(spacing: 10),GridItem(spacing: 10),GridItem(spacing: 10)],spacing: 10, content: {
                        ForEach(photos, id: \.self) { photo in
                            Image(photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: geometry.size.width/3)
                                .clipped()
                                .onTapGesture {
                                    selectedPhoto = photo
                                    sheetVisible = true
                                    
                                }
                        }
                    })
                }
            })
        })
        .padding(.horizontal, 10)
        .onAppear(perform: {
            photos = dataService.getPhotos()
        })
        .sheet(isPresented: $sheetVisible, content: {
            PhotoView(selectedPhoto: $selectedPhoto,
                      sheetVisible: $sheetVisible)
        })
        
    }
}

#Preview {
    GalleryView()
}
