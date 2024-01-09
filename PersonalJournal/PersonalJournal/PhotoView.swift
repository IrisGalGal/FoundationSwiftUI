//
//  PhotoView.swift
//  PersonalJournal
//
//  Created by Iris GalGal on 1/8/24.
//

import SwiftUI

struct PhotoView: View {
    @Binding var image : String
    var body: some View {
        Image(image)
            .resizable()
            .padding()
    }
}

#Preview {
    PhotoView(image: Binding.constant("thumbnail"))
}
