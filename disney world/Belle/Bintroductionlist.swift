//
//  Bintroductionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct Bintroductionlist: View {
    var body: some View {
        NavigationLink {
            introdution(introdata: .belle)
        } label: {
            movie2row(movie2: .demomovie2)
        }
    }
}

struct Bintroductionlist_Previews: PreviewProvider {
    static var previews: some View {
        Bintroductionlist()
    }
}
