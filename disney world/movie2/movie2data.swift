//
//  movie2data.swift
//  disney world
//
//  Created by Abby on 2022/10/19.
//

import Foundation
struct movie2data:Identifiable{
    let id = UUID()
    let pic:String
    let text:String
}

extension movie2data{
    static var demomovie2=movie2data(pic: "newspaper", text: "Introduction")
    static var demo2=movie2data(pic: "person.circle", text: "Character")
    static var demo3=movie2data(pic: "wand.and.stars.inverse", text: "animated version")
    static var demo4=movie2data(pic: "figure.dance", text: "live version")
}
