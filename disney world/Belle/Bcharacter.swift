//
//  Bcharacter.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct Bcharacter: View {
    let pages=[characterdata(pic: "belle9", name: "Belle", birthday: "20y 6/10 Gemini"),characterdata(pic: "beast5", name: "Beast", birthday: "21y 10/9 Libra")]
    let pages2=[characterdata(pic: "Lumiere", name: "Lumiere", birthday: "120y 4/7"),characterdata(pic: "Cogsworth", name: "Cogsworth", birthday: "149y 3/21"),characterdata(pic: "Mrs. Potts", name: "Mrs. Potts", birthday: "432y 7/31")]
    let igs=[igD(movie: "Beauty and the Beast", name: "Belle", pics: ["belle1","belle2","belle3","belle4","belle5","belle6","belle7","belle8","belle9","belle10","belle11","belle12"], bigpic: "belle4", post: "12", fans: "100.3k", follow: "450", job: "philanthropist", intro: "Hi!I am Belle\nAll animals and children are my friends\nDo you want to be my friend?", tage1: "@Beast", liveaction: "@Belle Live"),igD(movie: "Beauty and the Beast", name: "Beast", pics: ["beast1","beast2","beast3","beast4","beast5","beast6","beast7","beast8","beast9","beast10","beast11","beast12"], bigpic: "beast1", post: "12", fans: "20.9k", follow: "32", job: "Prince", intro: "Roar Roar Roar", tage1: "@Belle", liveaction: "@Belle Live")]
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

struct Bcharacter_Previews: PreviewProvider {
    static var previews: some View {
        Bcharacter()
    }
}
