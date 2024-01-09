//
//  ServiceData.swift
//  MovieMenu
//
//  Created by Iris GalGal on 1/5/24.
//

import Foundation

struct DataService{
    var movies = [MovieItem(name: "Gone with the Wind", year: "1939", director: "Victor Fleming", description: "A timeless epic set during the American Civil War, known for its memorable characters and sweeping romance.", watched: true),
                  MovieItem(name: "The Godfather ", year: "1972", director: "Francis Ford Coppola", description: "A crime drama that explores the Italian-American Mafia, featuring Marlon Brando and Al Pacino.", watched: true),
                  MovieItem(name: "Casablanca", year: "1942", director: "Michael Curtiz", description: "A romantic drama set in World War II, starring Humphrey Bogart and Ingrid Bergman.", watched: true),
                  MovieItem(name: "Citizen Kane ", year: "1941", director: "Orson Welles", description: "Often cited as one of the greatest films ever made, it tells the story of a newspaper magnate's rise and fall.", watched: true),
                  MovieItem(name: "Schindler's List", year: "1993", director: "Steven Spielberg", description: "A powerful portrayal of a German businessman who saved the lives of more than a thousand Polish-Jewish refugees during the Holocaust.", watched: true),
                  MovieItem(name: "Lawrence of Arabia", year: "1962", director: "David Lean", description: "An epic historical drama that follows the life of T.E. Lawrence during World War I.", watched: false),
                  MovieItem(name: "The Shawshank Redemption", year: "1994", director: "Frank Darabont", description: "A prison drama based on a Stephen King novella, known for its powerful storytelling.", watched: false),
                  MovieItem(name: "Star Wars: Episode IV- A New Hope ", year: "1977", director: "George Lucas", description: "The original Star Wars film launched one of the most iconic franchises in cinematic history.", watched: false),
                  MovieItem(name: "The Wizard of Oz", year: "1939", director: "Victor Fleming", description: "A beloved musical fantasy film that has captivated audiences for generations.", watched: false),
                  MovieItem(name: "Pulp Fiction", year: "1994", director: "Quentin Tarantino", description: "A non-linear crime film with an ensemble cast and innovative storytelling.", watched: true)
    ]
    func getData(watched: Bool) -> [MovieItem]{
        return movies.filter({ item in
            item.watched == watched
        })
    }
}
                                                            
                                                            
