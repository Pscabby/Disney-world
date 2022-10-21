//
//  Bellemovie.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct Bellemovie: View {
    var body: some View {
        NavigationLink {
            Bellemovie2()
        } label: {
            movie_row(movie: .belle)
        }
    }
}

struct Bellemovie_Previews: PreviewProvider {
    static var previews: some View {
        Bellemovie()
    }
}
