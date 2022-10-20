//
//  Aversionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct Aversionlist: View {
    var body: some View {
        NavigationLink {
            Aversion()
        } label: {
            movie2row(movie2: .demo3)
        }
    }
}

struct Aversionlist_Previews: PreviewProvider {
    static var previews: some View {
        Aversionlist()
    }
}
