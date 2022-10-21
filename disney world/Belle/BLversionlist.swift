//
//  BLversionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct BLversionlist: View {
    var body: some View {
        NavigationLink {
            BLversion()
        } label: {
            movie2row(movie2: .demo4)
        }
    }
}

struct BLversionlist_Previews: PreviewProvider {
    static var previews: some View {
        BLversionlist()
    }
}
