//
//  ContentView.swift
//  PersonalJournal
//
//  Created by Iris GalGal on 1/8/24.
//

import SwiftUI

struct MenuView: View {
    @State private var isPrivateMode: Bool = false
    var body: some View {
        TabView{
            BookJournal().tabItem {
                VStack{
                    Image(systemName: "book")
                    Text("Name")
                }
            }
            SettingsView(isPrivateMode: $isPrivateMode).tabItem {
                VStack{
                    Image(systemName: "gear")
                    Text("Settings")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
