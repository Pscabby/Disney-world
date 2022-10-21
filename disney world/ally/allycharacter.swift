//
//  allycharacter.swift
//  disney world
//
//  Created by Abby on 2022/10/21.
//

import SwiftUI

struct allycharacter: View {
    let pages=[characterdata(pic: "ally5", name: "Airel",birthday: "16y 11/17 Pisces"),characterdata(pic: "eric1", name: "Eric",birthday: "21y 7/16")]
    let pages2=[characterdata(pic: "Sebastian", name: "Sebastian",birthday: "5y 6/07"),characterdata(pic: "Flounder", name: "Flounder",birthday: "3y 3/19"),characterdata(pic: "Ursula", name: "Ursula",birthday: "343y 5/23")]
    let igs=[igD(movie: "The Little Mermaid", name:"Ariel",pics:["ally1","ally2","ally3","ally4","ally5","ally6","ally7","ally8","ally9","ally10","ally11","ally12"],bigpic: "ally7",post:"12",fans:"92.5k",follow: "352",job: "Princess",intro:"Hello,my name is Ariel.\nI am princess of the ocean",tage1: "@Prince Eric",liveaction: "@Ariel live"),igD(movie: "The Little Mermaid", name:"Eric",pics:["eric1","eric2","ally1","eric4","eric5","eric6","ally7","eric8","eric9","eric10","eric11","eric12"],bigpic: "eric11",post:"12",fans:"40.5k",follow: "230",job: "Prince",intro:"Hello,my name is Eric.\nI am prince of the land",tage1: "@Princess Airel",liveaction: "@Ariel live")]
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

struct allycharacter_Previews: PreviewProvider {
    static var previews: some View {
        allycharacter()
    }
}
