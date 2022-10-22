//
//  more.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import SwiftUI

struct more: View {
    let locations=["Shanghai Disney","Hongkong Disney","Tokyo Disney","Paris Disney","Orlando Disney","California Disney"]
    let links=[moredata(url: "https://www.shanghaidisneyresort.com/destinations/theme-park/", pic: "SL"),moredata(url: "https://www.hongkongdisneyland.com/zh-hk/", pic: "HL"),moredata(url: "https://www.tokyodisneyresort.jp/tc/index.html", pic: "TL"),moredata(url: "https://www.klook.com/zh-TW/activity/3969-disneyland-resort-paris/?gclid=Cj0KCQjwqc6aBhC4ARIsAN06NmPm8Zbgq8EScZsa85ppXDpA5q23vP5r0WXlwZp08JT3FargD4nVmrQaAkjyEALw_wcB&gclsrc=aw.ds", pic: "PL"),moredata(url: "https://www.klook.com/zh-TW/activity/4749-walt-disney-world-orlando/?gclid=Cj0KCQjwqc6aBhC4ARIsAN06NmPTJS6mB0x8rWR-qPNnWjWDVi_b9naHb0oXXastWdkYOY3UhjXOjVAaAgDxEALw_wcB&gclsrc=aw.ds", pic: "OL"),moredata(url: "https://www.klook.com/zh-TW/activity/4100-disneyland-park-disney-california-adventure-park-los-angeles/?gclid=Cj0KCQjwqc6aBhC4ARIsAN06NmOEjrrFE1NA6mVETFSn9KdLTIo7dmotycO2zFpV5bQbgRVWljdQ8xUaAnQSEALw_wcB&gclsrc=aw.ds", pic: "CL")]
    var body: some View {
        List{
            Section {
                NavigationLink {
                    moreview(more: .demo)
                } label: {
                    Text("Official website")
                        .font(.custom("Travel October", size: 25))
                        .foregroundColor(.brown)
                }
                
            }header: {
                Text("Disney+")
            }
            Section {
                ForEach(0..<locations.count) { index in
                    NavigationLink {
                        moreview(more: links[index])
                    } label: {
                        Text(locations[index])
                            .font(.custom("Travel October", size: 25))
                            .foregroundColor(.brown)
                    }
                }
                    
            }header: {
                Text("Dinsney land")
            }
            Section {
                NavigationLink {
                    moreview(more: .game)
                } label: {
                    Text("Disney Melee Mania")
                        .font(.custom("Travel October", size: 25))
                        .foregroundColor(.brown)
                }
            }header: {
                Text("Game")
            }
        }
        .navigationTitle("More about Disney")
        .navigationBarTitleDisplayMode(.inline)
        .background(Image("back").resizable().scaledToFill().ignoresSafeArea().opacity(0.3))
        .scrollContentBackground(.hidden)
    }
}

struct more_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            more()
        }
    }
}
