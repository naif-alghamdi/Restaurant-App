//
//  MenuList.swift
//  Menu
//
//  Created by Naif Alghamdi on 02/04/2024.
//

import SwiftUI

struct MenuList: View {
    
    var item: MenuItem
    
    var body: some View {
        
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
            Spacer()
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown).opacity(0.1))
    }
}

#Preview {
    MenuList(item: MenuItem(name: "Test", price: "$00", imageName: "onigiri"))
}
