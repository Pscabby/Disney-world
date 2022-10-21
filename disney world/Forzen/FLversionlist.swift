//
//  FLversionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct FLversionlist: View {
    var body: some View {
        NavigationLink {
            FLversion()
        } label: {
            movie2row(movie2: .demo4)
        }
    }
}

struct FLversionlist_Previews: PreviewProvider {
    static var previews: some View {
        FLversionlist()
    }
}
