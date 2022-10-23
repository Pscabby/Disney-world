//
//  movie2row.swift
//  disney world
//
//  Created by Abby on 2022/10/19.
//

import SwiftUI

struct movie2row: View {
    let movie2:movie2data
    var body: some View {
        HStack{
            Image(systemName: movie2.pic)
                
            Text(movie2.text)
                .font(.custom("Travel October", size: 30))
                .foregroundColor(.primary)
                
            
        }
    }
}

struct movie2row_Previews: PreviewProvider {
    static var previews: some View {
        movie2row(movie2:.demomovie2)
    }
}
