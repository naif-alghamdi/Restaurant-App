//
//  GalleryView.swift
//  Restaurant
//
//  Created by Naif Alghamdi on 02/04/2024.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoItem = [String]()
    @State var sheetVisiable = false
    @State var selectedPhoto = ""
    var dataSerivce = DataService()
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader{ proxy in
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)], spacing: 10) {
                        ForEach(photoItem, id:\.self){ p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                                .onTapGesture {
                                    sheetVisiable = true
                                    selectedPhoto = p
                                }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .onAppear(perform: {
            photoItem = dataSerivce.getPhoto()
        })
        .sheet(isPresented: $sheetVisiable, content: {
            PhotoView(selectedPhoto: $selectedPhoto, sheetVisible: $sheetVisiable)
        })
    }
}


#Preview {
    GalleryView()
}
