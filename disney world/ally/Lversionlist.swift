//
//  Lversionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct Lversionlist: View {
    var body: some View {
        NavigationLink {
            Lversion()
        } label: {
            movie2row(movie2: .demo4)
        }
    }
}

struct Lversionlist_Previews: PreviewProvider {
    static var previews: some View {
        Lversionlist()
    }
}
