//
//  PhotoView.swift
//  Restaurant
//
//  Created by Iris GalGal on 1/7/24.
//

import SwiftUI

struct PhotoView: View {
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool

    var body: some View {
        ZStack{
            HStack{
                Spacer()
                VStack{
                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    })
                    .padding()
                    Spacer()
                }
            }

            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
           
        }
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("gallery1"), sheetVisible: Binding.constant(false))
}
