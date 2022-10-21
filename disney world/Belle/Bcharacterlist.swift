//
//  Bcharacterlist.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct Bcharacterlist: View {
    var body: some View {
        NavigationLink {
            Bcharacter()
        } label: {
            movie2row(movie2: .demo2)
        }
    }
}

struct Bcharacterlist_Previews: PreviewProvider {
    static var previews: some View {
        Bcharacterlist()
    }
}
