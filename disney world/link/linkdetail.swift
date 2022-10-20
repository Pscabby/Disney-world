//
//  linkdetail.swift
//  disney world
//
//  Created by Abby on 2022/10/19.
//

import SwiftUI

struct linkdetail: View {
    let linkD:linkdata
    var body: some View {
        Link(destination: URL(string:linkD.url)!, label:{
            VStack {
                Image(linkD.pic)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 150)
                Text(linkD.txt)
                    .fontWeight(.bold)
            }
            
        })
    }
}

struct linkdetail_Previews: PreviewProvider {
    static var previews: some View {
        linkdetail(linkD: .demolink)
    }
}
