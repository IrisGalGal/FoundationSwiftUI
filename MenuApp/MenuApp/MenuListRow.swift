//
//  MenuListRow.swift
//  MenuApp
//
//  Created by Iris GalGal on 1/5/24.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color.brown.opacity(0.1))
    }
}
#Preview {
    MenuListRow(item: MenuItem(name: "Item Test", price: "5.3", imageName: "tako-sushi"))
}
