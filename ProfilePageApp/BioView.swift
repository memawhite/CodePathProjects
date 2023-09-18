//
//  BioView.swift
//  ProfilePageApp
//
//  Created by Mema White on 9/14/23.
//

import Foundation
import SwiftUI

struct BioView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Rory2")
                    .resizable() // Make the image resizable
                    .frame(width: 180, height: 180) // Set the desired width and height
                Text("My Life in Books and Coffee")
                    .font(.title)
                    .bold()
                    .italic()
                    .padding(20)
                Text("From the small, quirky town of Stars Hollow to my adventures at Yale University, my life has been a whirlwind of books, coffee, and some unforgettable moments. So, grab a cup of coffee and settle in, because this is my journey through the pages of my life.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 32)

            }
            .navigationBarTitle("Biography", displayMode: .inline)
        }
    }
}



struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        BioView()
    }
}
