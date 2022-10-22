//
//  moreview.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct moreview: View {
    let more:moredata
    var body: some View {
        
        Link(destination: URL(string: more.url)!) {
            VStack {
                Image(more.pic)
                    .resizable()
                .scaledToFit()
                Text("Click me to know more")
                    .font(.custom("Imagine Serif Stamp Rough", size: 30))
            }
            
        }
    }
}

struct moreview_Previews: PreviewProvider {
    static var previews: some View {
        moreview(more: .demo)
    }
}
