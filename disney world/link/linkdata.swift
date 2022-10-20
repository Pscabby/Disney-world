//
//  linkdata.swift
//  disney world
//
//  Created by Abby on 2022/10/18.
//

import Foundation
struct linkdata: Identifiable{
    let id = UUID()
    let url:String
    let txt:String
    let pic:String
}

extension linkdata{
    static var demolink:linkdata{
        linkdata(url: "https://thewaltdisneycompany.com", txt: "company", pic: "Walt Company")
        }
}
