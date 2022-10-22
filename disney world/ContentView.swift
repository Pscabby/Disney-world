//
//  ContentView.swift
//  disney world
//
//  Created by Abby on 2022/10/16.
//

import SwiftUI

struct ContentView: View {
    @State private var rotateDegree: Double = 0
    @State private var moveDistance: Double = 0
    var body: some View {
        NavigationView{
            ZStack{
                Color.pink
                    .opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Image("mickny")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .offset(x: moveDistance, y: 0)
                            .animation(.easeOut(duration: 4), value: moveDistance)
                            .onAppear(){
                                moveDistance+=12
                            }
                        Image("micky")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .offset(x: -moveDistance, y: 0)
                            .animation(.easeOut(duration: 4), value: moveDistance)
                            .onAppear(){
                                moveDistance+=20
                            }
                    }
                    .padding(.bottom,130)
                    NavigationLink{
                        tabviwe()
                    } label:{
                        VStack{
//                            Image("flightE")
//                                .resizable()
//                                .scaledToFit()
//                                .clipShape(Circle())
//                                .frame(width: 100)
                            Text("Start Your Magic journey")
                                .font(.custom("Travel October", size: 40))
                                .foregroundColor(.brown)
                        }
                    }
                }
            }
            .navigationTitle("Start")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
