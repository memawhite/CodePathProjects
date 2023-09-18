//
//  PhotosView.swift
//  ProfilePageApp
//
//  Created by Mema White on 9/14/23.
//

import SwiftUI

struct PhotoInfo: Identifiable {
    let id = UUID()
    let name: String
    var description: String
    @State var isLiked = false
    @State var buttonColor: Color = .black // Added a State variable for button color
}

struct PhotosView: View {
    let photos: [PhotoInfo] = [
        PhotoInfo(name: "Lorelai", description: "When I talk about my mom, I can't help but smile"),
        PhotoInfo(name: "Grades", description: "Education is my ticket to understanding the world"),
        PhotoInfo(name: "Coffee Time", description: "Nothing better than this"),
        PhotoInfo(name: "Fall Vibes", description: "Loving this season"),
        PhotoInfo(name: "Luke's", description: "My favorite place!"),
        PhotoInfo(name: "Fall Leaves", description: "Just another Fall pic"),
        PhotoInfo(name: "Break Time", description: "Enjoying my free time"),
        PhotoInfo(name: "Candle", description: "THIS is my favorite scent!")
    ]
    @State private var selectedPhoto: PhotoInfo? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                if photos.isEmpty {
                    Text("Photos: No photos available")
                        .font(.title)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 2), spacing: 10) {
                            ForEach(photos) { photoInfo in
                                Button(action: {
                                    selectedPhoto = photoInfo
                                }) {
                                    VStack {
                                        Image(photoInfo.name)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                                            .clipped()
                                        
                                        Text(photoInfo.description)
                                            .font(.caption)
                                        
                                        Button(action: {
                                            photoInfo.isLiked.toggle()
                                            photoInfo.buttonColor = photoInfo.isLiked ? .red : .black // Change button color
                                        }) {
                                            Image(systemName: photoInfo.isLiked ? "heart.fill" : "heart")
                                                .foregroundColor(photoInfo.buttonColor)
                                        }
                                        .padding()
                                    }
                                }
                            }
                        }
                        .padding(10)
                        .sheet(item: $selectedPhoto) { photoInfo in
                            PhotoDetailView(photoInfo: photoInfo)
                        }
                    }
                }
            }
            .navigationBarTitle("Rory's Gallery", displayMode: .inline)
        }
    }
}

struct PhotoDetailView: View {
    let photoInfo: PhotoInfo
    
    var body: some View {
        VStack {
            Image(photoInfo.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(photoInfo.description)
                .font(.body)
                .padding()
        }
        .navigationBarTitle(photoInfo.name, displayMode: .inline)
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }

}



