//
//  tabviwe.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct tabviwe: View {
    var body: some View {
        TabView{
            home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            movie_list()
                .tabItem {
                    Label("Movie", systemImage:"popcorn")
                }
            more()
                .tabItem {
                    Label("More",systemImage: "plus.square.on.square")
                }
        }
    }
}

struct tabviwe_Previews: PreviewProvider {
    static var previews: some View {
        tabviwe()
    }
}
