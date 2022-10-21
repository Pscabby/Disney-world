//
//  ig_page.swift
//  disney world
//
//  Created by Abby on 2022/10/16.
//

import SwiftUI

struct ig_page: View {
    let igd:igD
    var body: some View {
        VStack {
            HStack {
                Text(igd.movie)
                    .fontWeight(.bold)
                .font(.system(size: 20))
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color.blue)
            }
            
            VStack(alignment: .leading){
                HStack{
                    Image(igd.bigpic)
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(width:100,height:100)
                    Spacer()
                    HStack{
                        VStack{
                            Text(igd.post)
                                .fontWeight(.bold)
                            Text("Posts")
                        }
                        .padding(.trailing)
                        VStack{
                            Text(igd.fans)
                                .fontWeight(.bold)
                            Text("Followers")
                        }
                        .padding(.trailing)
                        VStack{
                            Text(igd.follow)
                                .fontWeight(.bold)
                            Text("Follwing")
                        }
                    }
                    Spacer()
                    
                }
                Text(igd.name)
                    .fontWeight(.bold)
                Text(igd.job)
                    .foregroundColor(.gray)
                Text(igd.intro)
                HStack{
                        Text(igd.tage1)
                            .foregroundColor(.blue)
                        Image(systemName:"heart.fill")
                            .foregroundColor(.red)
                }
                HStack {
                    Text("live-action:")
                    Text(igd.liveaction)
                        .foregroundColor(.blue)
                }
            }
            .padding(.leading)
            
            let columns=Array(repeating: GridItem(spacing:2), count: 3)
            ScrollView{
                LazyVGrid(columns: columns,spacing: 2){
                    ForEach(0..<igd.pics.count){index in
                        Rectangle()
                            .aspectRatio(1, contentMode: .fit)
                            .overlay {
                                Image(igd.pics[index])
                                    .resizable()
                                    .scaledToFill()
                            }
                            .clipped()
                    }
                }
            }
        }
//        .navigationTitle(igd.movie)
    }
}

struct ig_page_Previews: PreviewProvider {
    static var previews: some View {
        ig_page(igd:.demoig)
    }
}
