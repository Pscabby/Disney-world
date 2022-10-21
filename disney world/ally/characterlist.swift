//
//  characterlist.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct characterlist: View {
    var body: some View {
        NavigationLink {
            allycharacter()
        } label: {
            movie2row(movie2: .demo2)
        }
    }
}

struct characterlist_Previews: PreviewProvider {
    static var previews: some View {
        characterlist()
    }
}
