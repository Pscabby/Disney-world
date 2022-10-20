//
//  movie row.swift
//  disney world
//
//  Created by Abby on 2022/10/19.
//

import SwiftUI

struct movie_row: View {
    let movie:moviedata
    var body: some View {
        HStack{
            Image(movie.pic)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.white,lineWidth: 4))
                //.cornerRadius(20)
                .shadow(radius: 10)
                .padding(.trailing)
            Text(movie.name)
                .font(.custom("Monster AG", size: 30))
                .foregroundColor(.primary)
                
            
        }
    }
}

struct movie_row_Previews: PreviewProvider {
    static var previews: some View {
        movie_row(movie: .demomovie)
    }
}
