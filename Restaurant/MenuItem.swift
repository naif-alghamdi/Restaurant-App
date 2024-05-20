//
//  MenuItem.swift
//  Menu
//
//  Created by Naif Alghamdi on 30/03/2024.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
