//
//  movie data.swift
//  disney world
//
//  Created by Abby on 2022/10/19.
//

import Foundation
struct moviedata:Identifiable{
    let id=UUID()
    let pic:String
    let name:String
}

extension moviedata{
    static var demomovie=moviedata(pic: "ally1", name: "The Little Mermaid")
    static var demo2=moviedata(pic: "elsa1", name: "Forzen")
    static var belle=moviedata(pic: "bellepost", name: "Beaty And The Beast")
}
