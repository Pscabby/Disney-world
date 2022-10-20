//
//  Forzenmovie2.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct Forzenmovie2: View {
    var body: some View {
        List{
            Fintroductionlist()
            Fcharacterlist()
            FAversionlist()
            FLversionlist()
            }
        .background(Image("elsa1")
            .resizable()
            .scaledToFill()
            .frame(width: 300)
            .ignoresSafeArea()
            .opacity(0.4))
        .scrollContentBackground(.hidden)

        .navigationTitle("About movie")
        }
    }

struct Forzenmovie2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Forzenmovie2()
        }
    }
}
