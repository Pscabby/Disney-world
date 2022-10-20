//
//  ig_data.swift
//  disney world
//
//  Created by Abby on 2022/10/18.
//

import Foundation
struct igD{
    let ID=UUID()
    let movie:String
    let name:String
    let pics:[String]
    let bigpic:String
    let post:String
    let fans:String
    let follow:String
    let job:String
    let intro:String
    let tage1:String
    let liveaction:String
}

extension igD{
    static let demoig=igD(movie: "The Little Mermaid", name:"Ariel",pics:["ally1","ally2","ally3","ally4","ally5","ally6","ally7","ally8","ally9","ally10","ally11","ally12"],bigpic: "ally7",post:"12",fans:"92.5k",follow: "352",job: "actress",intro:"Hello,my name is Ariel.\nI am princess of the ocean",tage1: "@Prince Eric",liveaction: "@Ariel live")
}
