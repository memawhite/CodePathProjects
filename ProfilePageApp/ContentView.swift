//
//  ContentView.swift
//  ProfilePageApp
//
//  Created by Mema White on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("RoryPicture")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .padding(10)
                    .background(Color.gray)
                    .clipShape(Circle()) // Make the image rounded
                    .shadow(radius: 3) // Add a shadow
                
                VStack(alignment: .leading){
                    Text("Rory Gilmore")
                        .font(.title)
                        .padding()
                    
                    NavigationLink(destination: BioView()) {
                        Image(systemName: "person.circle")
                            .foregroundColor(.gray)
                            .font(.title)
                        Text("My Biography")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    
                    NavigationLink(destination: InterestsView()) {
                        Image(systemName: "heart.circle")
                            .foregroundColor(.gray)
                            .font(.title)
                        Text("Interests")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    
                    NavigationLink(destination: ListToDoView()) {
                        Image(systemName: "list.dash")
                            .foregroundColor(.gray)
                            .font(.title)
                        Text("List To Do")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    
                    NavigationLink(destination: PhotosView()) {
                        Image(systemName: "photo.on.rectangle.angled")
                            .foregroundColor(.gray)
                            .font(.title)
                        Text("Photos")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    
                    Spacer()
                }
                .navigationBarTitle("Profile")
            }
        }
    }
}
