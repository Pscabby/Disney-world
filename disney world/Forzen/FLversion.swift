//
//  FLversion.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct FLversion: View {
    var body: some View {
        NavigationLink {
            Lversion()
        } label: {
            movie2row(movie2: .demo4)
        }
    }
}

struct FLversion_Previews: PreviewProvider {
    static var previews: some View {
        FLversion()
    }
}
