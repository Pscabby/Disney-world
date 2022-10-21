//
//  home.swift
//  disney world
//
//  Created by Abby on 2022/10/18.
//

import SwiftUI
import AVKit
import AVFoundation

struct home: View {
    let disneyC=["D2","D3","D4","D5","D6"]
    let urlstring="https://zh.m.wikipedia.org/zh-tw/华特迪士尼公司"
        .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    
    var links: [linkdata]
    @State var looper: AVPlayerLooper?
    
    init() {
        links=[linkdata(url: "https://thewaltdisneycompany.com", txt: "company", pic: "Walt Company"),linkdata(url: urlstring ,txt:"Walt wiki", pic: "wiki"),linkdata(url: "https://www.youtube.com/c/Disney", txt: "Youtube", pic: "yt"),linkdata(url:"https://www.instagram.com/disney/", txt: "Instagram", pic: "ig"),linkdata(url:"https://www.facebook.com/Disney/", txt: "Facebook", pic: "fb")]
    }
    
    var body: some View {
        VStack{
            ScrollView {
                VStack{
                    
                    ScrollView(.horizontal)
                    {
                        let rows=[GridItem()]
                        LazyHGrid(rows:rows)
                        {
                            ForEach(0..<disneyC.count){index in
                                Image(disneyC[index])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .frame(height:250)
                                
                                
                            }
                        }
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom)
                    
                    HStack {

                        Text("This is Disney Intro!")
                            .font(.custom("National Cartoon", size: 30))
                            .foregroundColor(.orange)
                            .onAppear {
                                        let player = AVQueuePlayer()
                                        let fileUrl = Bundle.main.url(forResource: "DisneyIntro", withExtension: "mp3")!
                                        let item = AVPlayerItem(url: fileUrl)
                                        self.looper = AVPlayerLooper(player: player, templateItem: item)
                                    //player.play()
                                }
                    }
                    HStack(alignment:.firstTextBaseline){
                        Text("W")
                            .font(.custom("National Cartoon", size: 50))
                        Text("alt Disney arrived in California in the summer of 1923 with a lot of hopes but little else.")
                            .font(.custom("Donuts Snacky", size: 30))
                            .foregroundColor(.gray)
                    }
                    .padding()
                    
                    Link(destination:URL(string: "http://maps.apple.com/?address=500 South Buena Vista Street Burbank, CA 91521-0991 USA".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!, label: {
                        VStack{
                            Text("Where is disney now?")
                                .font(.custom("Fairy Godmother DEMO", size: 30))
                                .fontWeight(.bold)
                            Image("D1")
                                .resizable()
                                .scaledToFit()
                        }
                        
                    })
                         
                    HStack(alignment:.firstTextBaseline){
                        Text("H")
                            .font(.custom("National Cartoon", size: 50))
                        Text("e had made a cartoon in Kansas City about a little girl in a cartoon world, called Alice’s Wonderland, and he decided that he could use it as his “pilot” film to sell a series of these “Alice Comedies” to a distributor. Soon after arriving in California, he was successful.")
                            .font(.custom("Donuts Snacky", size: 30))
                            .foregroundColor(.gray)
                    }
                    .padding()

                    HStack(alignment:.firstTextBaseline){
                        Text("A")
                            .font(.custom("National Cartoon", size: 50))
                        Text(" distributor in New York, M. J. Winkler, contracted to distribute the Alice Comedies on October 16, 1923, and this date became the start of the Disney company.")
                            .font(.custom("Donuts Snacky", size: 30))
                            .foregroundColor(.gray)
                    }
                    .padding()
                    
                    NavigationLink {
                        youtubeview()
                    } label: {
                        Image("mickyboat")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 100)
                        Text("Click Me To see Disney Classic Into")
                            .font(.custom("Travel October", size: 30))
                    }

                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        let rows2=[GridItem()]
                        LazyHGrid(rows:rows2){
                            ForEach(links) { link in
                                linkdetail(linkD: link)
                            }
                        }
                        
                    }
                    
                    .fixedSize(horizontal: false, vertical: true)
                }
            }
            .navigationTitle("Walt Disney")
            .navigationBarTitleDisplayMode(.inline)
             //player.pause()
        }
        .background(Image("back").resizable().scaledToFill().ignoresSafeArea().opacity(0.3))
    }
    
    
    struct home_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                home()
            }
        }
    }
    
}
