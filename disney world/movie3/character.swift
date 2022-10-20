//
//  character.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct character: View {
    var body: some View {
        TabView {
            VStack{
                Image("ally5")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width:300)
                Text("Airel")
                    .font(.custom("Travel October", size: 40))
                    .foregroundColor(.brown)
                NavigationLink {
                    ig_page(igd: .demoig)
                } label: {
                    Text("ig")
                }

            }
            
            VStack{
                Image("ally5")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width:300)
                Text("Airel")
                    .font(.custom("Travel October", size: 40))
                    .foregroundColor(.brown)
            }
                }
                .tabViewStyle(.page)
    }
}

struct character_Previews: PreviewProvider {
    static var previews: some View {
        character()
    }
}
