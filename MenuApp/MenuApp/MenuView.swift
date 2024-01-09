//
//  ContentView.swift
//  MenuApp
//
//  Created by Iris GalGal on 1/4/24.
//

import SwiftUI

struct MenuView: View {
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems){ item in
            MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear(){
            menuItems = dataService.getData()
        }
    }
}

#Preview {
    MenuView()
}
