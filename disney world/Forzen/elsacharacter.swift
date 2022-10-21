//
//  elsacharacter.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct elsacharacter: View {
    let pages=[characterdata(pic: "elsa4", name: "Elsa", birthday: "21y 12/21 Libra"),characterdata(pic: "anna10", name: "Anna", birthday: "18y 7/21 Aquarius")]
    let pages2=[characterdata(pic: "Hans", name: "Hans", birthday: "23y 4/6"),characterdata(pic: "Olaf", name: "Olaf", birthday: "1y 12/16")]
    let igs=[igD(movie: "Forzen", name: "Elsa", pics: ["elsa1","elsa2","elsa3","elsa4","elsa5","elsa6","elsa7","elsa8","elsa9","elsa10","elsa11","elsa12"], bigpic: "elsa2", post: "12", fans: "69.4k", follow: "203", job: "Queen", intro: "Hello,my name is Elsa.\nI am Queen of the world\nDon't get too close to me or you will be forzened", tage1: "@Anna", liveaction: "@Wait for you"),igD(movie: "Forzen", name: "Anna", pics: ["anna1","anna2","anna3","anna4","anna5","anna6","anna7","anna8","anna9","anna10","anna11","anna12"], bigpic: "anna4", post: "12", fans: "97.8k", follow: "1923", job: "Princess", intro: "Hello,my name is Anna.\nI am Princess of the world\nDo you want to make a snowman?", tage1: "@Alsa @Hans", liveaction: "@Wait for you")]
    var body: some View {
        TabView {
            ForEach(0..<pages.count) { index in
                VStack{
                    character(char: pages[index])
                    NavigationLink {
                        ig_page(igd: igs[index])
                    } label: {
                        HStack {
                            Image(systemName:"heart.text.square.fill")
                            Text("Get to know me more?")
                                .font(.custom("Cutest Round", size: 20))
                        }
                    }
                }
            }
            
            ForEach(pages2) { page in
                character(char: page)
            }
            
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct elsacharacter_Previews: PreviewProvider {
    static var previews: some View {
        elsacharacter()
    }
}
