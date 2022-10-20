//
//  allymovie.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct allymovie: View {
    var body: some View {
        NavigationLink {
            allymovie2()
        } label: {
            movie_row(movie: .demomovie)
        }
    }
}

struct allymovie_Previews: PreviewProvider {
    static var previews: some View {
        allymovie()
    }
}
