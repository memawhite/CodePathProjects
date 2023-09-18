//
//  InterestsView.swift
//  ProfilePageApp
//
//  Created by Mema White on 9/14/23.
//

import Foundation
import SwiftUI

struct InterestsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ParagraphWithIcon(iconName: "book", text: "I guess you could say I've got a lot of interests. It's just that there's so much out there to explore, and I can't help but dive headfirst into the things I love. First and foremost, there's my undying devotion to literature. I mean, I practically live and breathe books. You'll often find me lost in the pages of classic novels or the latest bestsellers. Those words have this incredible power to transport me to different worlds, and I cherish every moment of it.")

                    ParagraphWithIcon(iconName: "pencil.line", text: "But it's not just about reading; I've got a knack for writing too. Journalism, in particular, has a special place in my heart. There's something remarkable about uncovering the truth and sharing it with the world through my writing. It's my way of making a difference.")

                    ParagraphWithIcon(iconName: "cup.and.saucer", text: "Oh, and coffee, don't get me started on that. Coffee shops are like my little havens, cozy sanctuaries where I can sit, sip, and let my thoughts run wild. They're the perfect places for reflection and creativity, and I've had some of my best ideas in those warm corners.")

                    ParagraphWithIcon(iconName: "music.note", text: "And then there's music. Music, well, it's the soundtrack to my life's adventures. Whether it's a mellow folk tune or a rock anthem, it has this magical way of setting the mood and adding that extra layer of meaning to everything. So, you see, my interests are as diverse as they come. They're a reflection of my multifaceted personality, and I like to think they combine to make me a truly unique and fascinating individual.")
                }
                .navigationBarTitle("Interests", displayMode: .inline)
            }
        }
    }
}

struct ParagraphWithIcon: View {
    var iconName: String
    var text: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: iconName)
                .font(.largeTitle)
                .padding(.bottom, 10)
            
            Text(text)
                .font(.body)
                .padding()
        }
    }
}


struct InterestsView_Previews: PreviewProvider {
    static var previews: some View {
        InterestsView()
    }
}
