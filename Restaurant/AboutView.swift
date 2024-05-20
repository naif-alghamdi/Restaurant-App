//
//  AboutView.swift
//  Restaurant
//
//  Created by Naif Alghamdi on 02/04/2024.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading){
                Text("About")
                    .font(.largeTitle)
                    .bold()
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, Japan. It is owned by sushi master Jiro Ono.[2] He also previously operated it as the head chef, but stepped aside in favor of his son Yoshikazu Ono by 2023 due to ill health. [3] It was the first sushi restaurant in the world[4] to receive three stars from the Michelin Guide,[5] although it was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public,[6][7] instead requiring reservations to be made through the concierge of a luxury hotel.[8]")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("""
                     Tsukamoto Sogyo Building
                     Basement Floor 1
                     2-15, Ginza 4-chome
                     """)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AboutView()
}
