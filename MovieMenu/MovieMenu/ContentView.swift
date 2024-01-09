//
//  ContentView.swift
//  MovieMenu
//
//  Created by Iris GalGal on 1/5/24.
//

import SwiftUI

struct ContentView: View {
    @State var movies : [MovieItem] = [MovieItem]()
    var dataService = DataService()
    @State var title = "List to Watch"
    var body: some View {
        NavigationStack{
            List(movies){ movie in
                MovieView(movie: movie)
            }
            .navigationTitle(title)
            HStack{
                Spacer()
                BorderedButton(action: {
                    title = "List to Watch"
                    movies = dataService.getData(watched: true)
                }, title: "List to Watch", color: .blue)
                Spacer()
                BorderedButton(action: {
                    title = "Watched"
                    movies = dataService.getData(watched: false)
                }, title: "Watched", color: .blue)
                Spacer()
            }
        }
        .onAppear(){
            movies = dataService.getData(watched: true)
        }
    }
}

#Preview {
    ContentView()
}
