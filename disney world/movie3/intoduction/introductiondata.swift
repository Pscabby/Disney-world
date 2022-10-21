//
//  introductiondata.swift
//  disney world
//
//  Created by Abby on 2022/10/21.
//

import Foundation
struct introdata{
    let pic:String
    let txt:String
}
extension introdata{
    static let demointro=introdata(pic: "allypost", txt: "The film tells the story of a teenage mermaid princess named Ariel, who dreams of becoming human and falls in love with a human prince named Eric, which leads her to make a magic deal with the sea witch, Ursula, to become human and be with him.")
    static let elsa=introdata(pic: "elsapost", txt: "Frozen follows princess Anna as she guides Kristoff, his reindeer Sven, and the snowman Olaf to find her estranged sister Elsa, whose icy powers have inadvertently trapped their kingdom in eternal winter.")
    static let belle=introdata(pic: "belle2", txt: "Beauty and the Beast focuses on the relationship between the Beast , a prince who is magically transformed into a monster and his servants into household objects as punishment for his arrogance, and a young woman whom he imprisons in his castle in exchange for her father. ")
}
