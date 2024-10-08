//
//  ContentView.swift
//  Restaurant
//
//  Created by Naif Alghamdi on 02/04/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView{
            MenuView()
                .tabItem {
                    VStack{
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                }
            AboutView()
                .tabItem {
                    VStack{
                        Image(systemName: "info.circle.fill")
                        Text("About")
                    }
                }
            GalleryView()
                .tabItem {
                    VStack{
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                }
        }
    }
}

#Preview {
    MainView()
}
