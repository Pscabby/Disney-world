//
//  youtubeview.swift
//  disney world
//
//  Created by Abby on 2022/10/21.
//

import SwiftUI

struct youtubeview: View {
    var body: some View {
        VStack{
            youtubedata(videoID: "cgD6i44ctDs")
                .frame(minHeight: 0,maxHeight: UIScreen.main.bounds.height*0.3)
                .cornerRadius(12)
                .padding(.horizontal,24)
                .background(Image("back").resizable().scaledToFill().opacity(0.3))
                .padding()
            Text("@Classic Disney Intro")
                .fontWeight(.bold)
        }
    }
}

struct youtubeview_Previews: PreviewProvider {
    static var previews: some View {
        youtubeview()
    }
}
