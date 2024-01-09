//
//  MovieView.swift
//  MovieMenu
//
//  Created by Iris GalGal on 1/5/24.
//

import SwiftUI

struct MovieView: View {
    var movie: MovieItem
    var body: some View {
        VStack{
            HStack{
                Text(movie.name)
                    .font(.headline)
                Spacer()
                Text(movie.year)
            }
            HStack{
                Text("Directed by: " + movie.director)
                Spacer()
            }
            .padding(.bottom, 20)
            VStack{
                Text(movie.description)
            }
            .padding(.bottom, 10)
            HStack{
                Text("Personal Rating: ")
                HStack{
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .foregroundColor(Color.yellow)
                Spacer()
            }
        }
    }
}

#Preview {
    MovieView(movie: MovieItem(name: "Gone with the Wind", year: "1939", director: "Victor Fleming", description: "A timeless epic set during the American Civil War, known for its memorable characters and sweeping romance.", watched: true))
}
