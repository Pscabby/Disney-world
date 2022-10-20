//
//  Forzenmovie.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct Forzenmovie: View {
    var body: some View {
        NavigationLink {
            Forzenmovie2()
        } label: {
            movie_row(movie: .demo2)
        }
    }
}

struct Forzenmovie_Previews: PreviewProvider {
    static var previews: some View {
        Forzenmovie()
    }
}
