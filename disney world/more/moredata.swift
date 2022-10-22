//
//  moredata.swift
//  disney world
//
//  Created by Abby on 2022/10/22.
//

import Foundation
struct moredata:Identifiable{
    let id=UUID()
    let url:String
    let pic:String
}
extension moredata{
    static let demo=moredata(url: "https://www.disneyplus.com/zh-tw", pic: "disney+")
    static let game=moredata(url: "https://apps.apple.com/tw/app/disney-melee-mania/id1544934886", pic: "game")
}
