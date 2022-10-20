//
//  allymovie2.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct allymovie2: View {
    var body: some View {
        List{
            introductionlist()
            characterlist()
            Aversionlist()
            Lversionlist()
            }
        .background(Image("ally1")
            .resizable()
            .scaledToFill()
            .frame(width: 300)
            .ignoresSafeArea()
            .opacity(0.4))
        .scrollContentBackground(.hidden)
        .navigationTitle("About movie")
        }
    }

struct allymovie2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            allymovie2()
        }
    }
}
