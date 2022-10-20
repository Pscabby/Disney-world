//
//  Fintroductionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct Fintroductionlist: View {
    var body: some View {
        NavigationLink {
            introdution()
        } label: {
            movie2row(movie2: .demomovie2)
        }

    }
}

struct Fintroductionlist_Previews: PreviewProvider {
    static var previews: some View {
        Fintroductionlist()
    }
}
