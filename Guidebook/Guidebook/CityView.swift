//
//  CityView.swift
//  Guidebook
//
//  Created by Iris GalGal on 1/8/24.
//

import SwiftUI

struct CityView: View {
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){
                VStack {
                    ForEach(cities){ city in
                        NavigationLink(destination: AttractionView(city: city), 
                                       label: {
                            CityCard(city: city)
                                .padding(.bottom, 30)
                        })
                        
                    }
                }
            }
            .padding()
        }
        .ignoresSafeArea()
        .onAppear(perform: {
            cities = dataService.getFileData()
        })
    }
}

#Preview {
    CityView()
}
