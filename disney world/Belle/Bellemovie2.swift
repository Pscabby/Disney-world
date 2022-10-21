//
//  Bellemovie2.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct Bellemovie2: View {
    var body: some View {
        List{
            Bintroductionlist()
            Bcharacterlist()
            BAversionlist()
            BLversionlist()
            }
        .background(Image("bellepost")
            .resizable()
            .scaledToFill()
            .frame(width: 300)
            .ignoresSafeArea()
            .opacity(0.4))
        .scrollContentBackground(.hidden)

        .navigationTitle("About movie")
    }
}

struct Bellemovie2_Previews: PreviewProvider {
    static var previews: some View {
        Bellemovie2()
    }
}
