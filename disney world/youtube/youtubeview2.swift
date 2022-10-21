//
//  youtubeview2.swift
//  disney world
//
//  Created by Abby on 2022/10/21.
//

import SwiftUI

struct youtubeview2: View {
    let yt:youtubedata
    var body: some View {
        VStack{
            youtubedata(videoID: yt.videoID,txt: yt.txt)
                .frame(minHeight: 0,maxHeight: UIScreen.main.bounds.height*0.3)
                .cornerRadius(12)
                .padding(.horizontal,24)
                .background(Image("back").resizable().scaledToFill().opacity(0.3))
                .padding()
            Text(yt.txt)
                .fontWeight(.bold)
        }
    }
}

struct youtubeview2_Previews: PreviewProvider {
    static var previews: some View {
        youtubeview2(yt: .demoyt)
    }
}
