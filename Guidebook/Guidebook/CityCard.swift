//
//  CityCard.swift
//  Guidebook
//
//  Created by Iris GalGal on 1/8/24.
//

import SwiftUI

struct CityCard: View {
    var city: City
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .background(content: {
                    Image(city.imageName)
                        .resizable()
                        .cornerRadius(15)
                })
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Text(city.summary)
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
    }
}

#Preview {
    CityCard(city: City(name: "Tokyo", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", imageName: "tokyo", attractions: [Attraction(name: "Tsukiji Outer Market",
                                                                                                                                                                                                                                    summary: "Tsukiji Market is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores.",
                                                                                                                                                                                                                                    longDescription: """
"Tsukiji Market (築地市場, Tsukiji shijō) is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores. Before 2018, it was the largest wholesale fish and seafood market in the world. The market opened on 11 February 1935 as a replacement for an older market that was destroyed in the 1923 Great Kantō earthquake. It was closed on 6 October 2018, with wholesale operations moving to the new Toyosu Market.

Located in Tsukiji in central Tokyo between the Sumida River and the upmarket Ginza shopping district, the inner wholesale market was only open to the trade and did not allow access to visitors.
""",
                                                                                                                                                                                                                                    imageName: "tsukiji", latLong: "35.66518913611479, 139.76982702573392")]))
}
