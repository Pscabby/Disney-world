//
//  BAversionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct BAversionlist: View {
    var body: some View {
        NavigationLink {
            BAversion()
        } label: {
            movie2row(movie2: .demo3)
        }

    }
}

struct BAversionlist_Previews: PreviewProvider {
    static var previews: some View {
        BAversionlist()
    }
}
