//
//  MenuView.swift
//  Restaurant
//
//  Created by Naif Alghamdi on 02/04/2024.
//

import SwiftUI

struct MenuView: View {
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataSerivce = DataService()
    
    var body: some View {
        
        List(menuItems) { item in
            
            MenuList(item: item)
        }
        .listStyle(.plain)
        .onAppear(perform: {
            menuItems = dataSerivce.getData()
        })
    }
}

#Preview {
    MenuView()
}
