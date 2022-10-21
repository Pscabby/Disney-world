//
//  introductionlist.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct introductionlist: View {
    var body: some View {
        NavigationLink {
            introdution(introdata:.demointro)
        } label: {
            movie2row(movie2: .demomovie2)
        }

    }
}

struct introductionlist_Previews: PreviewProvider {
    static var previews: some View {
        introductionlist()
    }
}
