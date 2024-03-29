//
//  AboutView.swift
//  Restaurant
//
//  Created by Iris GalGal on 1/5/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                Text("About")
                    .font(.largeTitle)
                    .bold()
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 30)
                
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) es un restaurante de sushi en el distrito de Ginza (Chūō, centro de Tokio). Es propiedad y está operado por el maestro de sushi Jiro Ono. Fue el primer restaurante de sushi del mundo en recibir tres estrellas de la Guía Michelin,1​2​ pero como no aceptaba reservas del público en general, fue descartado de la guía y se le retiraron las estrellas en noviembre de 2019.3​ De manera que el restaurante está restringido a una clientela de élite, y las reservas se deben realizar a través del conserje de un hotel de lujo.4 El restaurante en sí solo tiene una barra con diez asientos.5​ Una sucursal de dos estrellas operada por su hijo Takashi está ubicada en Roppongi Hills en Minato, Tokio.6​7​ El difunto chef francés Joël Robuchon dijo que el restaurante era uno de sus favoritos en el mundo y que le enseñó que el sushi es un arte")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("""
                 Japón, 〒104-0061 Tokyo, Chuo City, Ginza, 4 Chome−2−15 塚本総業ビルB1階
                 """)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AboutView()
}
