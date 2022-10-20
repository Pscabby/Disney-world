//
//  Fcharacterlist.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct Fcharacterlist: View {
    var body: some View {
        NavigationLink {
            character()
        } label: {
            movie2row(movie2: .demo2)
        }
    }
}

struct Fcharacterlist_Previews: PreviewProvider {
    static var previews: some View {
        Fcharacterlist()
    }
}
