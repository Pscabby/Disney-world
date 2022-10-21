//
//  youtubedata.swift
//  disney world
//
//  Created by Abby on 2022/10/21.
//

import Foundation
import SwiftUI
import WebKit

struct youtubedata:UIViewRepresentable {
    let videoID:String
    let txt:String
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL=URL(string:"https://www.youtube.com/embed/\(videoID)")else{return}
        uiView.scrollView.isScrollEnabled=false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
extension youtubedata{
    static let demoyt=youtubedata(videoID: "cgD6i44ctDs", txt: "@Classic Disney Intro")
    static let allyL=youtubedata(videoID: "LmIudid0h0M", txt: "@Live Version")
    static let allyA=youtubedata(videoID: "JYo3HYK9hz4", txt: "@Active Version")
    static let elsaA=youtubedata(videoID: "ozVYW_UDCU0", txt: "@Active Version")
    static let elsaL=youtubedata(videoID: "2Qoh3T0r2WE", txt: "@Fun Version")
    static let belleL=youtubedata(videoID: "F3iNnze3yi0", txt: "@Live Version")
    static let belleA=youtubedata(videoID: "EXRblD0Ip7Q", txt: "@Active Version")
}
