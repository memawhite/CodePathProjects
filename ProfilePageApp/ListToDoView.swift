//
//  ListToDo.swift
//  ProfilePageApp
//
//  Created by Mema White on 9/14/23.
//

import SwiftUI

struct ListToDoView: View {
    @State private var todoItems = [
        TodoItem(title: "1. Research potential internships for the upcoming summer break.", isCompleted: false),
        TodoItem(title: "2. Schedule a coffee date with Lane to catch up on life and music.", isCompleted: false),
        TodoItem(title: "3. Finish reading War and Peace by Leo Tolstoy for literature class.", isCompleted: false),
        TodoItem(title: "4. Help Luke set up the Stars Hollow Book Fair fundraiser.", isCompleted: false),
        TodoItem(title: "5. Help Luke set up the Stars Hollow Book Fair fundraiser.", isCompleted: false)

        
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("My List To Do:")
                    .font(.largeTitle)
                    .padding()
                
                List {
                    ForEach(todoItems.indices, id: \.self) { index in
                        Toggle(isOn: $todoItems[index].isCompleted) {
                            Text(todoItems[index].title)
                        }
                    }
                }
            }
            .navigationBarTitle("List To Do", displayMode: .inline)
        }
    }
}

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

struct ListToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ListToDoView()
    }
}

