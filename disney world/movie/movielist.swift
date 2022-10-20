//
//  movie list.swift
//  disney world
//
//  Created by Abby on 2022/10/19.
//

import SwiftUI

struct movie_list: View {
    var body: some View {
        List{
            allymovie()
            Forzenmovie()
        }
        .navigationTitle("Disney lists")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct movie_list_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            movie_list()
        }
    }
}
