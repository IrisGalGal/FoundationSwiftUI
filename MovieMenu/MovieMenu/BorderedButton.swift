//
//  BorderedButton.swift
//  MovieMenu
//
//  Created by Iris GalGal on 1/5/24.
//

import SwiftUI

struct BorderedButton: View {
    var action: () -> Void
    var title: String
    var color: Color = .yellow
    var body: some View {
        Button(action: action, label: {
            Text(title)
        })
        .padding()
        .border(color)
    }
}

#Preview {
    BorderedButton(action: {}, title: "List to Watch", color: .blue)
}
