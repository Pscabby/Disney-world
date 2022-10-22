//
//  introdution.swift
//  disney world
//
//  Created by Abby on 2022/10/19.
//

import SwiftUI

struct introdution: View {
    let introdata:introdata
    var body: some View {
        ZStack {
//            Color(.blue)
//                .opacity(0.2)
//                .ignoresSafeArea()
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1))
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Image(introdata.pic)
                    .resizable()
                    .scaledToFit()
                .frame(width: 350)
                Text(introdata.txt)
                    .font(.custom("Fairy Godmother DEMO", size: 30))
                    .padding()
            }
        }
    }
}

struct introdution_Previews: PreviewProvider {
    static var previews: some View {
        introdution(introdata: .demointro)
    }
}
