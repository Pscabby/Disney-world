//
//  characterdata.swift
//  disney world
//
//  Created by Abby on 2022/10/21.
//

import Foundation
struct characterdata:Identifiable{
    let id=UUID()
    let pic:String
    let name:String
    let birthday:String
}
extension characterdata{
    static var demoC=characterdata(pic: "ally5", name: "Airel",birthday: "16y 11/17 Pisces")
}
